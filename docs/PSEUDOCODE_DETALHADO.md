# GALAGA 1981: Pseudocódigo anotado para doutorado em Engenharia da Computação

## 0. Escopo, método e rastreabilidade

Esta apostila distingue três objetos técnicos que **não são equivalentes**:

1. **ROM original**: 14 arquivos e 37.920 bytes contendo código Z80, gráficos 2 bpp e PROMs. É o artefato real fornecido pelo docente.
2. **Listagem de engenharia reversa**: `docs/disassembly/cpu[0-2]_linear_sweep.asm`. Faz passagem linear de 24.576 bytes de programa. Não separa automaticamente instruções de tabelas, strings e dados. Prefixos IX/IY têm marcação de incerteza. Não é uma descompilação semântica validada.
3. **Porte comportamental em Pygame**: motor Python próprio, com algoritmos modernos, mas dados gráficos **extraídos byte a byte da ROM**. Não executa instruções Z80. Não equivale à execução fiel do circuito original.

Uma reprodução bit a bit da CPU e ciclo a ciclo do hardware requer emular três processadores, memória compartilhada, IRQ/NMI, 05XX, 06XX, 51XX, 54XX, 00XX, 02XX, 04XX, NAMCO WSG e o sincronismo. O projeto não afirma resolver esses componentes. Confundir reconstrução com emulação gera uma afirmação empiricamente falsa.

## 1. Organização física dos dados

| Região | Binários | Bytes | Interpretação |
|---|---|---:|---|
| Programa CPU principal | gg1_1b.3p; gg1_2b.3m; gg1_3.2m; gg1_4b.2l | 16.384 | 0x0000-0x3fff |
| Programa CPU auxiliar | gg1_5b.3f | 4.096 | 0x0000-0x0fff |
| Programa CPU de som/auxiliar | gg1_7b.2c | 4.096 | 0x0000-0x0fff |
| Caracteres | gg1_9.4l | 4.096 | 256 matrizes 8x8x2bpp |
| Sprites | gg1_11.4d; gg1_10.4f | 8.192 | 128 matrizes 16x16x2bpp |
| PROMs | prom-1,2,3,4,5 | 1.312 | Cor, lookup, temporização/som |

A arquitetura de vídeo possui largura lógica 224 e altura 288, 60,6 Hz aproximadamente (clock mestre de 18,432 MHz; tempo de frame 384 * 264 / 6,144 MHz). Os três Z80 trabalham a 3,072 MHz. Os sprites têm quatro índices por pixel, não quatro cores fixas globais. Cada grupo de cores consulta uma PROM. Confundir 2 bpp com '2 bits RGB' seria um erro conceitual.

## 2. Pseudocódigo fiel do decodificador de 2 bpp

```text
CONSTANTE PLANOS_DE_BITS = [0, 4]
CONSTANTE SPRITE_LARGURA = 16
CONSTANTE SPRITE_ALTURA = 16
CONSTANTE BYTES_POR_SPRITE = 64
CONSTANTE STRIDE_SPRITE = 512 bits

X_OFFSETS = [0,1,2,3, 64,65,66,67, 128,129,130,131, 192,193,194,195]
Y_OFFSETS = [0,8,16,24,32,40,48,56, 256,264,272,280,288,296,304,312]

FUNÇÃO LER_BIT(rom, posicao_bit):
    byte_index = posicao_bit DIV 8
    bit_index  = posicao_bit MOD 8
    RETORNAR (rom[byte_index] >> bit_index) AND 1

FUNÇÃO DECODIFICAR_SPRITE(rom, indice):
    DECLARAR matriz[16][16] DE INTEIROS DE 0 A 3
    base = indice * 512
    PARA y DE 0 A 15:
        PARA x DE 0 A 15:
            endereco = base + Y_OFFSETS[y] + X_OFFSETS[x]
            bit0 = LER_BIT(rom, endereco + 0)
            bit1 = LER_BIT(rom, endereco + 4)
            matriz[y][x] = bit0 OR (bit1 << 1)
    RETORNAR matriz
```

**Derivação**: um elemento 16 × 16 contém 256 pixels. Cada pixel codifica um inteiro em 2 bits. São necessários 512 bits ou 64 bytes por sprite. Dois arquivos de 4.096 bytes formam 8.192 bytes, ou 128 sprites. Os dois bitplanes residem em bits separados dentro dos bytes, não em duas imagens independentes consecutivas. Os offsets de linhas e colunas seguem a definição histórica `spritelayout_galaga` do MAME.

**Exemplo**: pixel cuja fonte tem `(b0,b1)=(1,0)` corresponde a índice 1; `(1,1)` a índice 3. O índice 0 é considerado transparente no renderizador de objetos. O índice final RGB depende do grupo de paleta e da PROM de lookup. O projeto exporta arrays `SPRITES[sprite][y][x]` e `CHARS[caractere][y][x]`.

### 2.1 Caracteres

```text
CHAR_X = [64,65,66,67, 0,1,2,3]
CHAR_Y = [0,8,16,24,32,40,48,56]
CHAR_STRIDE = 128 bits

PARA tile=0..255:
    PARA y=0..7:
        PARA x=0..7:
            char[tile][y][x] = LER_BIT(rom, tile*128 + CHAR_Y[y] + CHAR_X[x])
                             + 2*LER_BIT(rom, tile*128 + CHAR_Y[y] + CHAR_X[x] + 4)
```

## 3. PROM resistiva e seleção de cores

Os 32 bytes da PROM definem uma paleta de 32 entradas. Para cada canal há combinação de bits mediante uma rede de resistores: vermelho e verde usam 1 kΩ, 470 Ω e 220 Ω; azul utiliza 470 Ω e 220 Ω. Uma aproximação didática útil usa contribuição proporcional a 1/R, devidamente normalizada. Para correspondência analógica exata é necessário considerar cargas, níveis lógicos e a implementação de `compute_resistor_weights` do MAME.

```text
PARA indice_cor DE 0 A 31:
    valor = palette_prom[indice_cor]
    R = DAC_PONDERADO(valor bits[0..2], resistencias=[1000,470,220])
    G = DAC_PONDERADO(valor bits[3..5], resistencias=[1000,470,220])
    B = DAC_PONDERADO(valor bits[6..7], resistencias=[470,220])
    PAL[indice_cor] = (R,G,B)

FUNÇÃO DESENHAR_PIXEL(x,y,pixel2bpp,grupo,lookup):
    SE pixel2bpp == 0: RETORNAR // transparência
    indice_lookup = ((grupo AND 63)*4 + pixel2bpp) AND 255
    cor_index = lookup[indice_lookup] AND 31
    framebuffer[x,y] = PAL[cor_index]
```

**Ressalva de precisão:** a correspondência exata da lookup PROM ao hardware, sinais de transparência e offset de índice deve ser aferida contra quadros de referência. O algoritmo do arquivo Python expõe essa parametrização sem esconder a incerteza.

## 4. Pseudocódigo conceitual do arcade completo (modelo de hardware)

O pseudocódigo a seguir representa **a organização de um emulador**, não a tradução validada dos bytes de programa:

```text
INICIALIZAR três contextos de CPU Z80, cada um com seu espaço ROM
INICIALIZAR RAM de vídeo, RAM compartilhada, RAM de registradores de sprites
INICIALIZAR unidade de som NAMCO, chips de controle e geraçao de estrelas
CONFIGURAR circuitos lógicos de habilitação de interrupções, reset e watchdog

ENQUANTO energia_ligada:
    PARA cada janela temporal de emulação:
        EXECUTAR_CPU0(ciclos_divididos)
        EXECUTAR_CPU1(ciclos_divididos)
        EXECUTAR_CPU2(ciclos_divididos)
        SERVIR_LEITURAS_ESCRITAS_MEMORIA_MAPEADA()
        ATUALIZAR_SINAIS_DE_IO_E_CHIPS_ESPECIAIS()
    PARA cada linha de varredura:
        CONSULTAR_TILEMAP_VIDEO()
        CONSULTAR_SPRITERAM_E_ATRIBUTOS()
        APLICAR_PRIORIDADE_E_PALETAS()
        CALCULAR_ESTRELAS_COM_GERADOR_DE_ESTADO_LFSR()
        PRODUZIR_PIXELS()
    SE inicio_de_vblank:
        DISPARAR_INTERRUPCOES_HABILITADAS()
    GERAR_AMOSTRAS_DE_AUDIO_POR_HARDWARE_VIRTUAL()
    EXIBIR_FRAME_EM_ESCALA_INTEIRA()
```

Esse desenho orienta pesquisa para desenvolver um emulador, porém **não** é implementado pelo `main.py`. Um emulador precisaria, adicionalmente, modelar `IN/OUT`, sincronismo, IRQ, particularidades de CPUs e os chips Namco. Os arquivos `.asm` são insumos de investigação, não comprovação de call graph.

## 5. Pseudocódigo do porte Python executável

### 5.1 Inicialização

```text
LER assets/rom_graphics.json
CRIAR matriz de 224x288 pixels RGB
CRIAR janela de saída com escala inteira de 1 a 6
CARREGAR 128 matrizes de sprite e 256 de caracteres
CRIAR cache de surfaces por (sprite_id, grupo_de_cor)
CRIAR gerador pseudoaleatório com semente reprodutível
INICIALIZAR placar, três vidas, stage 1 e objetos de jogo
```

**Invariante:** a renderização opera em 224 × 288. A apresentação ampliada não altera o grid lógico, preservando contornos sem interpolação.

### 5.2 Gerador de ondas

```text
AO_INICIAR_STAGE:
    LIMPAR vetores de inimigos e projéteis
    PARA cada linha de formação de 0 a 4:
        DEFINIR quantidade = 4, 8, 8, 10, 10
        DEFINIR posição final centrada e espaçamento de 19 px
        PARA cada inimigo:
            associar classe BOSS, BUTTERFLY ou BEE
            definir HP = 2 para boss, 1 para demais
            definir estado ENTER e atraso proporcional à posição
            incluir na lista de entidades
```

A geometria é **reconstrução heurística**, não leitura das tabelas de trajetórias internas do Z80. O jogo original possui movimentos de entrada e mergulho mais complexos; para equivalência é necessário identificar e testar suas tabelas na RAM/ROM.

### 5.3 Máquina de estados dos inimigos

```text
PARA cada inimigo:
    SE estado ENTER:
        interpolar suavemente entre origem fora da tela e posição de formação
        AO_ATINGIR_POSICAO: estado <- FORMATION
    SE estado FORMATION:
        oscilar formação em torno da posição de referência
        SE temporizador da onda autorizar ataque:
            guardar posição de partida
            estado <- DIVE ou TRACTOR
    SE estado DIVE:
        atualizar curva senoidal e queda progressiva
        permitir projéteis sob condição probabilística
        SE fora da tela: estado <- RETURN
    SE estado TRACTOR:
        executar trajetória de chefe com feixe desenhado
        SE interceptar nave do jogador: iniciar sequência simplificada de captura
        SE fora da tela: estado <- RETURN
    SE estado RETURN:
        subir pela borda superior e convergir para o slot
        SE slot alcançado: estado <- FORMATION
```

A captura, liberação e nave dupla estão representadas apenas parcialmente como mecânica inspirada no arcade. Não afirmar exatidão de timing ou regras de pontuação sem validação externa.

### 5.4 Atualização temporal

```text
A CADA FRAME (frequência-alvo 60 Hz):
    ler teclas de movimentação e disparo
    limitar X da nave ao retângulo lógico
    atualizar resfriamento de disparo
    avançar projéteis no eixo Y
    para cada projétil, testar colisão contra caixas de inimigos
    atualizar HP e atribuir pontos conforme tipo e modo
    atualizar máquina de estados dos inimigos
    lançar tiros inimigos parametrizados
    testar colisão dos inimigos/tiros contra a nave
    atualizar invulnerabilidade e vidas
    SE nenhum inimigo: iniciar stage seguinte
    atualizar estrelas desenhadas como pixels discretos
    renderizar HUD, inimigos, tiros, nave e reservas de vidas
    fazer scale inteiro para a janela sem antialias
```

**Complexidade:** atualização da formação é O(E), projéteis contra inimigos O(P E) no pior caso, estrelas O(S). Para escala arcade com dezenas de entidades, o custo é desprezível; uma implementação didática de broad-phase grid reduziria as colisões para casos extensos.

## 6. Engenharia reversa do Z80: o que a listagem demonstra

- CPU0 concatena quatro blocos de 0x1000 bytes na faixa lógica 0000h-3FFFh.
- CPU1 e CPU2 têm um bloco de 0x1000 bytes cada na faixa 0000h-0FFFh.
- `disassemble.py` gera uma listagem para cada byte. Instruções implementadas no decodificador aparecem mnemônicas; `DB` identifica casos que não foram decodificados com confiança.
- O decodificador utiliza **varredura linear**, portanto trechos de dados podem aparecer como instruções e prefixos de índice podem quebrar fronteiras. É um produto de reconhecimento sintático, não prova de fluxo ou de semântica.
- Para levantamento confiável de rotinas, começar por reset vector 0000h, vectores RST, IRQ 0038h/IM 2, rastrear destinos de CALL/JP e contrastar com traços dinâmicos em emulador especializado.
- Validar com logs: PC, SP, AF, BC, DE, HL, IX, IY, I, R, flags, banco de memória e ciclos. Registrar por evento as escritas nas áreas 8000h-9BFFh e IO.

## 7. Projetos experimentais para doutorado

**Experimento 1: conservação de bits.** Para cada matriz 16 × 16 comparar `extract_assets.py` contra a ROM de entrada. Dado cada pixel [0,3], o mapeamento `[b0,b1]` restaura todos os 512 bits na ordem dos offsets. A reconstrução bidirecional pode demonstrar perda zero.

**Experimento 2: validade visual.** Capturar imagens do hardware original ou do MAME configurado para o mesmo conjunto de ROMs e comparar sprites por pixel após normalizar orientação, paleta e coordenadas. Usar PSNR, diferença absoluta e hashes por tile. Não comparar cenas geradas por motores distintos como se fossem equivalentes.

**Experimento 3: sincronismo.** Comparar estado na mesma contagem de frames, taxas de atualização, tempos de objetos, IRQ por vblank e alinhamento de áudio; identificar deriva frame a frame.

**Experimento 4: performance do motor.** Registrar custo de renderização CPU para cache versus leitura de matriz pixel a pixel. Medir média, p95 e p99 de latência por quadro sob execução headless reproduzível.

**Experimento 5: grafo de controle.** Comparar a varredura linear com desassemblagem orientada a fluxo e traços reais, criando matrizes de cobertura de instruções e rotinas sem atribuição semântica não demonstrada.

## 8. Critérios de aceitação para afirmar fidelidade completa

A versão só pode ser descrita como 'porte fiel completo' após comprovar pelo menos: saída gráfica pixel-perfect na mesma orientação e mesma atualização; mesmas trajetórias e timings; captura, resgate e nave dupla completos; scoring e desafios especiais; sons sintetizados de acordo com os chips originais; lógica original de créditos/DIP switches; tratamento de interrupções e de três Z80; e determinismo testado com entradas e estados equivalentes. **Estes critérios ainda não foram atendidos pelo projeto atual.**

## 9. Fontes primárias e complementares

- MAME Galaga driver, arquitetura, mapa de memória, paletas, layouts de gráficos e processadores: https://github.com/mamedev/mame/blob/master/src/mame/namco/galaga.cpp
- MAME documentação técnica: https://docs.mamedev.org/
- Z80 CPU User Manual, Zilog: https://www.zilog.com/docs/z80/um0080.pdf
- ROM metadata: https://data.spludlow.co.uk/mame/machine/galaga

*O material serve como base de aula prática de reverse engineering e porte interpretativo, não como substituto de um emulador completo nem como código-fonte Z80 recuperado.*

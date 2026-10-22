# Galaga: pseudocódigo didático e engenharia reversa

## Limites de fidelidade
Este documento NÃO é uma descompilação integral dos processadores Z80. Trata-se de uma reconstrução comportamental para ensino, apoiada na estrutura do conjunto de ROMs. O programa Pygame é uma reimplementação independente, com sprites originais simplificados; não reproduz os gráficos, sons, temporizações e padrões exatos do arcade.

## Inventário
ROM ZIP: 14 arquivos, 37.920 bytes; 9 arquivos de 4096 bytes e 5 PROMs (4 de 256 bytes e 1 de 32 bytes). Os dados devem ser interpretados segundo o mapeamento de memória da placa arcade, não como imagens PNG ou scripts.

## Hardware de referência
Arcade vertical 224 x 288 pixels, orientação 3:4. Plataforma Namco Galaga, múltiplos processadores Z80, vídeo com tiles/sprites indexados por paleta e PROMs. Profundidade de bits dos elementos gráficos e organização planar dependem da região gráfica e do layout do hardware. Não confundir a profundidade de cor indexada do sprite com a profundidade RGB da tela moderna.

## Pseudocódigo comportamental
```
INICIALIZAR hardware lógico, placar, vidas, estágio e entidades
CARREGAR recursos gráficos e paleta (no arcade, decodificar ROM/PROM)
ENQUANTO jogo estiver executando:
    LER entradas de esquerda, direita, disparo e início
    SE jogador estiver ativo:
        MOVER nave horizontalmente respeitando bordas
        SE disparo pressionado E intervalo permitido:
            CRIAR projétil na posição da nave
        PARA cada inimigo vivo:
            SE estiver em formação: atualizar oscilação
            SENÃO: atualizar trajetória de mergulho e retorno
            EVENTUALMENTE criar disparo inimigo
        PARA cada projétil:
            ATUALIZAR posição
            TESTAR colisões e remover quando necessário
        ATUALIZAR pontuação, vidas e inimigos restantes
        SE todos inimigos derrotados: avançar estágio
        SE vidas acabaram: apresentar GAME OVER
    DESENHAR fundo estrelado, formação, tiros, nave e HUD
    AGUARDAR próximo frame
```

## Elementos ainda não implementados
Captura da nave por raio trator, nave dupla, challenging stages, rotas de voo exatas, áudio original, cores/bitplanes extraídos da ROM, temporização fiel do Z80 e equivalência frame a frame. Para uma descompilação verificável seria necessário analisar o disassembly de cada região de código, identificar vetores, memória compartilhada e rotinas de vídeo, além de validar contra emulador de referência.

## Uso em aula
1. Comparar bytes brutos, instruções Z80 e pseudocódigo de alto nível.
2. Mostrar diferenças entre resolução lógica e resolução da janela ampliada 3x sem filtragem.
3. Discutir representação de sprites por máscaras de pixels e paletas indexadas.
4. Instrumentar a função de atualização para estudar colisões, estados e taxa de quadros.
5. Implementar recursos faltantes como exercício incremental.

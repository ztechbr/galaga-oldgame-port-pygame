# GALAGA 1981, estudo avançado com ROM original e Pygame

**Status técnico:** porta comportamental jogável que usa **sprites e caracteres reais da ROM de 2 bpp**, mais dados de PROM, e listagens estáticas das três CPUs Z80. **Não é uma descompilação completa nem emulação hardware-perfect.** Veja as limitações e a matriz de critérios em `docs/PSEUDOCODE_DETALHADO.md`.

## Pré-requisitos

Python 3.10+; Pygame 2.5+ para visualização (som é opcional).

```sh
python -m pip install -r requirements.txt
python extract_assets.py
python disassemble.py
python main.py --scale 3
```

Para ambientes remotos/headless: `SDL_VIDEODRIVER=dummy SDL_AUDIODRIVER=dummy python main.py --atlas` (abrir janela apenas se display suportado).

## Controles

- `1` ou `Enter`: iniciar/jogar novamente
- `A/D` ou setas: deslocamento lateral
- `Espaço` ou `Z`: tiro
- `T`: abrir/fechar catálogo real de sprites da ROM
- Catálogo: `PageUp/PageDown` muda página; `C` alterna sprites 16×16/caracteres 8×8; `[`/`]` altera grupo de cores
- `R`: reiniciar; `Esc`: fechar

## Estrutura

- `rom/`: arquivos binários originalmente fornecidos pelo usuário.
- `extract_assets.py`: decodificador do bitplane 2 bpp com offsets originais documentados no MAME.
- `assets/sprite_arrays.py`: matrizes Python de 128 sprites 16×16 e 256 caracteres 8×8. Cada valor inteiro ocupa faixa 0..3.
- `assets/rom_graphics.json`: pixels e PROMs para renderização rápida.
- `assets/preview_sprites.png`: prévia de índice de cores não-palettizada dos sprites.
- `main.py`: motor Pygame, componentes, HUD, estados, projéteis, formação, nave dupla simplificada, som sintetizado aproximado, seletor de sprites.
- `disassemble.py`: parser Z80 linear de ROM e saída de listings com limites explícitos.
- `docs/disassembly/`: listagens 0000h-3FFFh (CPU0) e 0000h-0FFFh (CPU1 e CPU2).
- `docs/disassembly_report.json`: contagens de instruções presumidas, **não** execução real.
- `docs/PSEUDOCODE_DETALHADO.md`: fundamentação, equações, pseudocódigo e protocolo de validação.
- `tests/test_assets.py`: testes independentes da GUI.

**Observação de licenciamento:** o projeto contém ROMs fornecidas pelo solicitante e derivados gráficos diretos dessas ROMs. Não redistribuir publicamente sem verificar a titularidade e as permissões.

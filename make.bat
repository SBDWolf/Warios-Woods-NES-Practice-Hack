IF NOT EXIST output mkdir output
del /q output
copy source_rom\source.nes output\output.nes
tools\asar\asar.exe --no-title-check src/main.asm output/output.nes
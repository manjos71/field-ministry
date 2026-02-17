#!/bin/bash
set -e

SDK_DIR="$HOME/Android/Sdk"
TOOLS_URL="https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip"
FLUTTER_BIN="$HOME/development/flutter/bin/flutter"

echo "=========================================="
echo "Configurando Android SDK para Field Ministry"
echo "=========================================="

echo "[1/5] Criando diretório do SDK em $SDK_DIR..."
mkdir -p "$SDK_DIR/cmdline-tools"

echo "[2/5] Baixando ferramentas..."
# Download to temp file
wget -q --show-progress -O tools.zip "$TOOLS_URL"

echo "[3/5] Extraindo arquivos..."
unzip -q tools.zip
rm tools.zip

# Move to correct structure: cmdline-tools/latest/bin
echo "[4/5] Organizando pastas..."
if [ -d "cmdline-tools" ]; then
  rm -rf "$SDK_DIR/cmdline-tools/latest"
  mv cmdline-tools "$SDK_DIR/cmdline-tools/latest"
fi

echo "[5/5] Configurando Flutter..."
"$FLUTTER_BIN" config --android-sdk "$SDK_DIR"

echo "Verificando licenças..."
yes | "$FLUTTER_BIN" doctor --android-licenses

echo ""
echo "✅ Concluído com sucesso!"
echo "Agora o comando 'flutter run' deve funcionar."

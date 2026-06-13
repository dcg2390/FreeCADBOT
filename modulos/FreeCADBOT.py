#!/bin/bash
echo "=================================================="
echo "      🤖 INSTALACIÓN FREECADBOT v1.0.2           "
echo "=================================================="

RUTA_MOD="$HOME/.local/share/FreeCAD/Mod/FreeCADBOT"
RUTA_MAC="$HOME/.local/share/FreeCAD/Macros/FreeCADBOT"

echo "🔍 Buscando FreeCAD..."
if ! command -v freecad &> /dev/null; then
    echo "❌ ERROR: FreeCAD no está instalado"
    exit 1
fi

mkdir -p "$RUTA_MOD" "$RUTA_MAC"
cp -rf ./modulos/* "$RUTA_MOD/"
chmod -R 755 "$RUTA_MOD" "$RUTA_MAC"

if [ -f "$RUTA_MOD/FreeCADBOT.py" ]; then
    echo "✅ INSTALACIÓN COMPLETADA"
    echo "📂 Ubicación: $RUTA_MOD"
else
    echo "❌ Error al copiar archivos"
    exit 1
fi
echo "=================================================="

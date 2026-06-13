#!/bin/bash
echo "=================================================="
echo "      🗑️ DESINSTALACIÓN FREECADBOT               "
echo "=================================================="
RUTA_MOD="$HOME/.local/share/FreeCAD/Mod/FreeCADBOT"
RUTA_MAC="$HOME/.local/share/FreeCAD/Macros/FreeCADBOT"

[ -d "$RUTA_MOD" ] && rm -rf "$RUTA_MOD" && echo "✅ Módulo eliminado"
[ -d "$RUTA_MAC" ] && rm -rf "$RUTA_MAC" && echo "✅ Macros eliminadas"

echo "✅ Listo"
echo "=================================================="

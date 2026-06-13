#!/bin/bash
echo "====================================="
echo "    INSTALACIÓN DE FREECADBOT       "
echo "====================================="

# Verificar FreeCAD
if command -v freecad &> /dev/null; then
    echo "✅ FreeCAD detectado"
else
    echo "❌ No se encontró FreeCAD. Instálalo primero."
    exit 1
fi

# Instalar dependencias
echo "📦 Instalando librerías necesarias..."
pip install -r requirements.txt

# Copiar archivos al directorio de módulos
RUTA_MODULOS="$HOME/.local/share/FreeCAD/Mod/FreeCADBOT"
mkdir -p "$RUTA_MODULOS"
cp -r ./* "$RUTA_MODULOS"

echo "✅ Instalación finalizada"
echo "👉 Abre FreeCAD y activa el módulo en: Herramientas > Administrar complementos"

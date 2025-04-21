#!/bin/bash

# Ruta del archivo original
ruta_original="/apps/moodle/moodle/theme/remui/classes/output/core_renderer.php"

# Ruta del archivo nuevo
ruta_nuevo="/media/SSD/core_renderer.php"

# Ruta backup
ruta_bak="/apps/moodle/moodle/theme/remui/classes/output/core_renderer.php.bak"

# Verificar si el archivo original existe
if [ ! -f "$ruta_original" ]; then
    echo "Error, archivo original no existe en la ruta."
    exit 1
fi

# Verificar si el archivo nuevo existe
if [ ! -f "$ruta_nuevo" ]; then
    echo "Error, archivo nuevo no existe en la ruta."
    exit 1
fi

# Crear un backup del archivo original
echo "Creando un backup del archivo original..."
cp "$ruta_original" "$ruta_bak"
if [ $? -ne 0 ]; then
    echo "Error al crear el backup."
    exit 1
fi
echo "Backup creado exitosamente."

# Reemplazar el archivo original con el archivo nuevo
echo "Reemplazando el archivo original con el archivo nuevo..."
cp "$ruta_nuevo" "$ruta_original"
if [ $? -ne 0 ]; then
    echo "Error al reemplazar el archivo."
    exit 1
fi
echo "Archivo reemplazado exitosamente."

# Cambiar el owner del archivo
echo "Cambiando el owner del archivo..."
chown www-data:www-data "$ruta_original"
if [ $? -ne 0 ]; then
    echo "Error al cambiar el propietario del archivo."
    exit 1
fi
echo "Propietario cambiado con éxito."

echo "Operación de reemplazo completada con éxito"
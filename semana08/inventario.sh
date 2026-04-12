# --- 1. Cargar lista de archivos ---
mapfile -t archivos < <(find "$REPO" -type f | sort)
echo "Total de archivos encontrados: ${#archivos[@]}"

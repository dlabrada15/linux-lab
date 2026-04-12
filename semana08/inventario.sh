# --- 4. Matriz de resumen por semana ---
mapfile -t semanas < <(ls -d "$REPO"/semana*/ 2>/dev/null | sort)
COLS=3 # scripts, docs, tamano_kb
COLS=3 # scripts, docs, tamano_kb
declare -a matriz_sem
for (( i=0; i<${#semanas[@]}; i++ )); do
dir="${semanas[$i]}"
scripts=$(find "$dir" -name "*.sh" | wc -l)
scripts=$(find "$dir" -name "*.sh" | wc -l)
docs=$(find "$dir" -name "*.md" | wc -l)
kb=$(du -sk "$dir" 2>/dev/null | awk '{ print $1 }')
matriz_sem[$(( i*COLS + 0 ))]=$scripts
matriz_sem[$(( i*COLS + 1 ))]=$docs
matriz_sem[$(( i*COLS + 2 ))]=${kb:-0}
done

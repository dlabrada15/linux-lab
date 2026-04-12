# --- 5. Mostrar resultados ---
echo ""
echo "=== ARCHIVOS POR EXTENSION ==="
{
echo "EXTENSION ARCHIVOS TAMANO_KB"
for ext in $(printf '%s\n' "${!conteo[@]}" | sort); do
kb=$(( ${tamano_ext["$ext"]:-0} / 1024 ))
echo "$ext ${conteo[$ext]} $kb"
done
} | column -t

echo ""
echo "=== RESUMEN POR SEMANA ==="
printf "%-12s %-4s %-4s %-10s %-8s\n" \
"SEMANA" "SH" "MD" "SIZE_KB" "README"

printf "%s\n" "----------------------------------------------"
for (( i=0; i<${#semanas[@]}; i++ )); do
nombre=$(basename "${semanas[$i]}")
printf "%-12s %-4s %-4s %-10s %-8s\n" \
"$nombre" \
"${matriz_sem[$(( i*COLS + 0 ))]}" \
"${matriz_sem[$(( i*COLS + 1 ))]}" \
"${matriz_sem[$(( i*COLS + 2 ))]}" \
"${tiene_readme[$nombre]:-NO}"
done

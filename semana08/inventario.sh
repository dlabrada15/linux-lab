# --- 6. Escribir reporte ---
REPORTE="${REPO}/semana08/inventario-report.md"
{
echo "# Inventario del Repositorio linux-lab"
echo ""
echo "Generado: $(date '+%Y-%m-%d %H:%M:%S')"
echo ""
echo "## Total de archivos: ${#archivos[@]}"
echo ""
echo "## Archivos por extension"
echo ""
echo "| Extension | Archivos | Tamano KB |"
echo "|-----------|----------|-----------|"
for ext in $(printf '%s\n' "${!conteo[@]}" | sort); do
kb=$(( ${tamano_ext["$ext"]:-0} / 1024 ))
echo "| $ext | ${conteo[$ext]} | $kb |"
done
echo ""
echo "## Resumen por semana"
echo ""
echo "| Semana | Scripts | Docs | Size KB | README |"
echo "|--------|---------|------|---------|--------|"

for (( i=0; i<${#semanas[@]}; i++ )); do
nombre=$(basename "${semanas[$i]}")
echo "| $nombre | ${matriz_sem[$(( i*COLS + 0 ))]} | ${matriz_sem[$(( i*COLS + 1 ))]} | ${matriz_sem[$(( i*COLS + 2 ))]} | ${tiene_readme[$nombre]:-NO} |"
done
} > "$REPORTE"
echo ""
echo "Reporte guardado en: $REPORTE"

# --- 2. Conteo por extension ---
declare -A conteo
declare -A tamano_ext

for f in "${archivos[@]}"; do
nombre="${f##*/}"
if [[ "$nombre" == *.* ]]; then
ext="${nombre##*.}"
else 
ext="(sin extension)"
fi
conteo["$ext"]=$(( ${conteo["$ext"]:-0} + 1 ))

bytes=$(stat -c%s "$f" 2>/dev/null || echo 0)
tamano_ext["$ext"]=$(( ${tamano_ext["$ext"]:-0} + bytes ))
done

# --- 3. Estado de README por semana ---
declare -A tiene_readme
for semana in "$REPO"/semana*/; do
nombre=$(basename "$semana")
if [[ -f "$semana/README.md" ]]; then
tiene_readme["$nombre"]="si"
else
tiene_readme["$nombre"]="NO"
fi
done

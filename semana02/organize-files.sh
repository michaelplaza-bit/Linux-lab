# Organizar documentos
echo "[2/4] Organizando documentos..."

mv *.txt organized/documents/  2>/dev/null || true
mv *.md organized/documents/   2>/dev/null || true
mv *.doc organized/documents/  2>/dev/null || true

echo "Documentos organizados"

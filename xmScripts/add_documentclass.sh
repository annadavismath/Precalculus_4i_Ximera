for f in */*.tex; do
  tmpfile=$(mktemp)
  echo "Doing $f (via $tmpfile)"
  cat header.txt "$f" > "$tmpfile"
  echo -e "\n\n\\\\end{document}" >> "$tmpfile"
  mv "$tmpfile" "$f"
done

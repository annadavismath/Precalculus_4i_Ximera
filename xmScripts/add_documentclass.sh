for f in */*.tex; do
  tmpfile=$(mktemp)
  echo "Doing $f (via $tmpfile)"
  cat header.txt "$f" > "$tmpfile"
  echo -e "\n\n\\\\end{document}" >> "$tmpfile"
  mv "$tmpfile" "$f"
done





##  sed -i "s?\\\\input{Ex?%% SKIPPED %% \\\\input{Ex?" */*.tex
##  sed -i "s/PNG/png/" */*.tex
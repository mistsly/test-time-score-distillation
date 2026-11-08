#!/usr/bin/env bash
set -euo pipefail
paper_dir="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
build_root=/data534/fengwj/TSD/reports
cd "$paper_dir"
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir="$build_root/cvpr_build" main.tex
latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir="$build_root/cvpr_supplement_build" supplement.tex
# Publish only after both builds succeed, leaving auxiliary files outside the source tree.
install -m 644 "$build_root/cvpr_build/main.pdf" "$paper_dir/main.pdf"
install -m 644 "$build_root/cvpr_supplement_build/supplement.pdf" "$paper_dir/supplement.pdf"
printf 'Updated PDFs: %s/main.pdf and %s/supplement.pdf\n' "$paper_dir" "$paper_dir"

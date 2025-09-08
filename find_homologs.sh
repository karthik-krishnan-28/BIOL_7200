#!/bin/bash
# Usage: find_homologs.sh <query file> <subject file> <output file>

tblastn -query $1 -subject $2 -outfmt "6 qseqid sseqid pident length" | awk -F'\t' '$3 >= 30 && $4 >= 90' > $3
wc -l $3
WIKI_DIR=/root/data/text/
OUTDIR=/root/outdata

mkdir -p $OUTDIR
touch $OUTDIR/wiki_all.json
rm $OUTDIR/wiki_all.json
touch $OUTDIR/wiki_all.json

find "$WIKI_DIR" -type f  -print0 |
    while IFS= read -r -d '' line; do
            filename=$(echo "$line" | rev | cut -d'/' -f 1 | rev)
            subfilename=$(echo "$line" | rev | cut -d'/' -f 2 | rev)
            prefix="${subfilename}_${filename}"
            new_name=$(echo "$line")
            echo "Procesing $prefix, $filename, $new_name"
            cat $new_name >> $OUTDIR/wiki_all.json
    done
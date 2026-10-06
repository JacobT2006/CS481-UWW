for filename in $@
do
    if [ -f "$filename" ]; then
        echo "File found: $filename"
    else
        echo "File not found: $filename"
        exit
    fi
done
echo "Valid list of files" 
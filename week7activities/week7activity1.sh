echo -n "Enter a valid file name: "
read -r filename

if [ -f "$filename" ]; then
    echo "File size: $(ls -l -h -- "$filename" | cut -d' ' -f5)"
    echo "File owner: $(ls -l -h -- "$filename" | cut -d' ' -f3)"
else
    echo "Error: '$filename' is not a valid file."
fi

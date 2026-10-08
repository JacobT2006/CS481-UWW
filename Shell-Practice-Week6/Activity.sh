echo -n "Enter a directory: "
read -r directory

if [ -d "$directory" ]; then
    subfolder_count=$(find "$directory" -mindepth 1 -maxdepth 1 -type d -print | wc -l)
    echo "Number of subfolders in $directory: $subfolder_count"
else
    echo "Error: '$directory' is not a valid directory."
fi

echo -n "Enter name of a directory: "
read -r directory

if [ -d "$directory" ]; then
    for item in "$directory"/*; do
        if [ -d "$item" ]; then
            subdir_count=$(find "$item" -mindepth 1 -maxdepth 1 -type d | wc -l)
            echo "Directory: $item - Subdirectories: $subdir_count"
        elif [ -f "$item" ]; then
            echo "File: $item - Size: $(ls -l -h "$item" | cut -d' ' -f5)"
        fi
    done
else
    echo "Invalid input: '$directory' is not a directory."
fi

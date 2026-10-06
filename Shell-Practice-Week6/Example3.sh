echo -n "Enter valid directory: "
# Read input from user
read folder
# If it is a directory then list its contents
if [ -d "$folder" ]; then
    echo "Contents of $folder:"
    list=$(ls "$folder")
    for item in $list; do
        echo $item
    done
else
    echo "Invalid directory: $folder"
fi
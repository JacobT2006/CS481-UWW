echo -n "Enter name of a directory: "
read -r filename
if [ -d "$filename" ]
then
    echo "Regular files in the $filename directory:"
    find "$filename" -maxdepth 1 -type f -printf '%f\n'
else
    echo "Invalid input: '$filename' is not a directory."
fi

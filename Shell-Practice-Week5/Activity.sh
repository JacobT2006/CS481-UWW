echo -n "Enter name of a file or directory: "
read filename
if [ -d $filename ]
then
        echo "$filename is a directory"
        echo "Contents of the $filename:"
        ls $filename
elif [ -f $filename ]
then
        echo "$filename is a file"
        echo "Number of lines in the file:"
        wc -l < $filename
else
  echo "Invalid input"
fi

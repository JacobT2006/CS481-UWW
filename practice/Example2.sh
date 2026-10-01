echo -n "Enter name of a directory: "
read filename
if [ -d "$filename" ] 
then
	echo "$filename is a directory"
	echo "Contents of the $filename:"
	ls $filename
fi

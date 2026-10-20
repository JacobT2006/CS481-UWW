# Part 1: Check if the script is run as superuser
if [ $(id -u) -ne 0 ];
then
    echo "Only superuser can run this script"
    exit 1
fi

# Part 2: Prompt the user for a username
echo -n "Enter a username to create a new user: "
read -r username
if id "$username" &>/dev/null; then
    echo "User '$username' already exists."
    exit 1
fi

# Part 3: Create the new account
echo "Enter a password for $username: "
read -s password
useradd -m -d /home/cs481/$username $username
if [ $? -ne 0 ]; then
    echo "Could not create user '$username'."
    exit 1
fi

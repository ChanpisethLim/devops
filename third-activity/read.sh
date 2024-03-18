echo "Please enter your name"
read -p "First name: " fname
read -p "Last name: " lname
fullname="$(echo $fname $lname | tr 'a-z' 'A-Z')"
echo "Hi $fullname"
f=$(echo $fname | cut -c1 | tr 'A-Z' 'a-z')
l=$(echo $lname | awk -F" " '{print $1}' | tr 'A-Z' 'a-z')
domain="@dminc.com"
echo "Email: $f$l@$domain"

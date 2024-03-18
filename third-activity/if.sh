# read -p "Total score: " tscore
# if [ $tscore -gt 90 ]
# then
#  echo "You've got: A"
# elif [ $tscore -gt 80 ]
# then
#  echo "You've got grade: B"
# elif [ $tscore -gt 70 ]
# then
#  echo "You've got grade: C"
# elif [ $tscore -gt 60 ]
# then
#  echo "You've got grade: D"
# elif [ $tscore -gt 50 ]
# then
#  echo "You've got grade: E"
# else
#  echo "You've got grade: F"
# fi

# name="John"
# echo $name  # see below
# echo "$name"
# echo "${name}!"
# string="j"
# echo $string
if [[ -z "$string" ]]; then
  echo "String is empty"
elif [[ -n "$string" ]]; then
  echo "String is not empty"
fi
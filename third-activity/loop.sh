# for NAME in joe jane julie
# do
# ADDRESS="$NAME@example.com"
# MESSAGE='Projects are due today!'
# echo $MESSAGE | mail -s Reminder $ADDRESS
# done

# for n in {2010..2020}
# do
#  cal $n >> ~/Desktop/Cal.sh
# done

for ((i=1980; i<=2000; i++))
do
 year=$(date +"%Y")
 age=$(($year-i))
echo "$i now is $age years old" 
done
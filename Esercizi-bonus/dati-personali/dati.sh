awk -F ','  '{ print $2 }' datiper.csv | grep -E -m 1 'minelli|daiu' | sed 's/\b./\U&/'

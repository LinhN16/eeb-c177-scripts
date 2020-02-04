# to make the script run automatically from any prompt without typing bash, you can use the shebang (#!) , which means that all following contents of the script will be sent to the program following the shebang

# Take a csv file delimited by ";"
# Remove the header
# Make space separated
# Sort according to the 6th (numeric) column in descending order
# Redirect to a file

tail -n +2 $1 | cut -d "$3" -f 2-6 | tr -s "$3" " " | sort -r -n -k 6 > $2
echo "The output file has been created"

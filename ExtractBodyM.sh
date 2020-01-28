# to make the script run automatically from any prompt without typing bash, you can use the shebang (#!) , which means that all following contents of the script will be sent to the program following the shebang

# Take a csv file delimited by ";"
# Remove the header
# Make space separated
# Sort according to the 6th (numeric) column in descending order
# Redirect to a file

tail -n +2 ~/developer/repos/CSB/unix/data/Pacifici2013_data.csv | cut -d ";" -f 2-6 | tr -s ";" " " | sort -r -n -k 6 > BodyM.csv


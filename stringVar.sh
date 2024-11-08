my_string="Hello, World!"
echo "$my_string"

echo "String in Lowercase: ${my_string,,}"
echo "String in lower: ${my_string,}"
echo "String in Uppercase: ${my_string^^}"
echo "String in Uppercase: ${my_string^}"
echo "String in Titlecase: ${my_string~}"
echo "String in Titlecase: ${my_string~0}"

# Concatenation
str1="Hello"
str2="World"
combined="$str1, $str2!"
echo "$combined"   # Output: Hello, World!

 # String Length
my_string="Hello"
echo "${#my_string}"   # Output: 5

# String Comparison
str1="Hello"
str2="World"

if [ "$str1" = "$str2" ]; then
    echo "Strings are equal"
else
    echo "Strings are not equal"
fi



# Substring Extraction
my_string="Hello, World!"
echo "${my_string:0:5}"    # Output: Hello (first 5 characters)
echo "${my_string: -5}"    # Output: Hello (first 5 characters)


# Finding and Replacing Substrings
my_string="Hello, World!"
new_string="${my_string/World/Shell}"
echo "$new_string"   # Output: Hello, Shell!


my_string="Hello, World!"

if [[ "$my_string" == *"World"* ]]; then
    echo "Substring found!"
else
    echo "Substring not found!"
fi


my_string="HELLO"
echo "$my_string" | tr 'A-Z' 'a-z'    # Output: hello


my_string="hello"
echo "$my_string" | tr 'a-z' 'A-Z'    # Output: HELLO

#!/bin/bash

# Ask the user for their name

echo "Hello, who am I talking to?"
read varname
echo "It is nice to meet you, $varname!"

echo "Press ENTER to Proceed"
read

#Ask for login details
read -p 'Username: ' uservar
read -sp 'Password: ' passvar
echo ""
echo "Thankyou $uservar!! We now have your login details."

#Demonstrate hoe reead actually works
echo "What cars do you like?"
read car1 car2 car3
echo Your first car was: $car1
echo Your second car was: $car2
echo Your third car was: $car3

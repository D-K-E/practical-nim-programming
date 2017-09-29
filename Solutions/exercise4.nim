#[
############# Calculate Hours from Minutes #############

Author: Kaan Eraslan

Purpose: Convert minutes to hours.

Usage: Run the program, enter number of minutes.

]#

# Package Declarations

from parseutils import parseInt

# End of Package Declarations

echo "So you want to convert some minutes to hours AND minutes."
echo "Okay... Soooo, minutes: "

var
  minutes_str: string = readLine(stdin)
  minutes: int
  processed_chars: int

processed_chars = parseInt(minutes_str, minutes)

var
  hours: int
  remainder: int

hours = minutes div 60
remainder = minutes mod 60

echo "Here is your result: ", hours, " hours ", remainder, " minutes."

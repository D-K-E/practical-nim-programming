#[
############# Calculate Perimeter of Rectangle #############

Author: Kaan Eraslan

Purpose: Calculates the perimeter of a rectangle given width and height.

Usage: Run the program, enter the width and height.

]#

from parseutils import parseInt

echo "So you want to calculate the perimeter of a rectangle, huh...\n"
echo "What's the width? "

var
  width_str: string = readLine(stdin)
  width: int
  processed_chars: int

processed_chars = parseInt(width_str, width)

echo "What's the height? "

var
  height_str: string = readLine(stdin)
  height: int
  perimeter: int
  height_pro: int

processed_chars = parseInt(height_str, height)
perimeter = 2*width + (2*height)

echo "Since you've asked, the perimeter is ", perimeter


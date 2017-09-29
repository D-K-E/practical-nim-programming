#[
############# Calculate the Money #############

Author: Kaan Eraslan

Purpose: Calculates the money in units from the given amount.

Usage: Run the program, enter the amount.

]#

# Package Declarations

from parseutils import parseInt

# End of Package Declarations

echo "How much changes do you have? Total amount should be less 1$ though, or I am not up for the task it's too iterative. How much ? In cents: "

var
  change_line: string = readLine(stdin)
  money: int
  processed_char: int
  quarters: int
  dimes: int
  nickles: int
  pennies: int
  remainder: int

processed_char = parseInt(change_line, money)

if money > 100:
  echo "No no no no, it is too much, I shan't compute using this ",money," parameter"
elif money == 100 or money < 100:
  quarters = money div 25
  remainder = money mod 25
  if remainder == 10 or remainder > 10:
    dimes = remainder div 10
    remainder = remainder mod 10
    case remainder
    of 0..10:
      if remainder == 5 or remainder > 5:
        nickles = remainder div 5
        remainder = remainder mod 5
        pennies = remainder
      else:
        pennies = remainder
    else: discard

echo "You have, ", quarters," quarters, ", dimes, " dimes, ", nickles, " nickles, ", pennies," pennies."

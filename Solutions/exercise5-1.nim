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
  money_amount: int
  processed_char: int
  quarters: int
  dimes: int
  nickles: int
  pennies: int
  remainder: int

processed_char = parseInt(change_line, money_amount)

if money_amount > 100:
  echo "No no no no, it is too much, I shan't compute using this ",money_amount," parameter"
  return false
elif money =< 100:
  quarters = money div 25
  remainder = money mod 25
  if remainder => 10:
    dimes = remainder div 10
    remainder = remainder mod 10
  elif remainder < 10:
    if remainder => 5:
      nickles = remainder div 5
      remainder = remainder mod 5
    else:
      pennies = remainder

echo "You have, ", quarters," quarters, ", dimes, " dimes, ", nickles, " nickles, ", pennies," pennies."

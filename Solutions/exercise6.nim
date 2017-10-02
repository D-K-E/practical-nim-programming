#[
########## Calculate %8 Sales Tax + Money ########

Author: Kaan Eraslan

Purpose: Calculate the sales tax, %8 of the capital, and add to the capital.
Follow the software cycle through it.

Usage: Run the program. Enter the amount in dollars.

]#

#[
Specification: Calculate sales tax and add it to capital Program
01/01/xxxx
by Kaan

This is a preliminary specification of a program, that calculates the sales tax
of given amount of money in dollars, adds the calculated amount to the capital.

When the program runs, user would be promted to enter a value in dollars.
The warning should include a mention to dollar based unit, overall rounding of
the result to the pennies.
Then we shall read the amount from the line.
Multiply by 100 to convert it to pennies.
Calculate the %8 of the money.
Then add it to the money and return it to the user in the terminal screen.

]#

#[

Code design

Read the amount from user input
Do calculations
Display result.

]#
#[

Prototype: Implementing only one function from the design.
This doesn't make sense for a program of such size, so the prototype is just for
illustration purposes.

var
  money: int
  result: int
  tax: int

tax = money * 8 / 100
result = tax + money

]#

# ----------- The actual code -----------

# Package Declarations
from math import round
from strutils import strip, parseInt

# End of Package Declarations

# Variable Declarations

var
  line: string # Line receiving user input
  money: int # Amount of money given by the user
  resulting_money: int # Money + the sales tax
  tax: float # %8 sales tax
  process_char: int # intermadiary variable for parseInt

echo """Enter the amount in dollars. Don't forget.
The final result would be rounded to pennies: """

line = readLine(stdin)

# Extracting the amount

money = parseInt(line)

money = money * 100 # Dollar to pennies

# Calculating the tax

tax = money * 8 / 100

resulting_money = int(round(tax)) + money

# Displaying the Result
echo "Resulting money in pennies: ", resulting_money

# Function for the operation:
proc dollar_tax_add(line_input:string):int =
  ##[
      Purpose
      ----------

      Calculate the sales tax of the money and add it to the capital

      Description
      ---------------

      The function takes an input line as an argument,
      parses the integer provided by the user. Then calculates the tax value and
      finally adds the calculated amount to the user input.
      displays the result on terminal screen

      Parameters
      -------------
      line_input: string
          The line to which user is expected to enter the capital in dollars.
   ]##
  var
    new_money: int # Amount of money given by the user
    new_resulting_money: int # Money + the sales tax
    new_tax: float # %8 sales tax
    new_process_char: int # intermadiary variable for parseInt
  new_money = parseInt(line_input)
  new_money = new_money * 100 # Dollar to pennies
  new_tax = new_money * 8 / 100
  new_resulting_money = int(round(new_tax)) + new_money
  return new_resulting_money

when isMainModule:
  import unittest
  # Tests for Calculate %8 Sales Tax + Money -----------------
  suite "Test the operations of Calculate %8 Sales Tax + Money":
    setup:
      let
        money: int = 2
        line_test: string = """Enter the amount in dollars. Don't forget.
The final result would be rounded to pennies: 2  njkcxw """
        resulting_money: int = 216
        tax: float = 16.0

    test "Check line Extraction for 2 dollars input":
      var
        check_money: int
        line:string = """The final result would be rounded to pennies: 2 """
      check_money = parseInt(line)
      check(check_money == money)

    test "Dollar to Penny conversion":
      var
        money_pennies: int
      money_pennies = money * 100
      check(money_pennies == 200)

    test "Tax money calculation for %8":
      var
        calculated_tax:float
      calculated_tax = 200 * 8 / 100
      check(calculated_tax == tax)

    test "Tax + money check":
      var
        calculated_money: int
      calculated_money = int(round(tax)) + (money * 100)
      check(calculated_money == resulting_money)

    test "Dollar Tax Add check":
      var
        new_result: int
        line:string
      line = strip(line_test)
      new_result = dollar_tax_add(line)
      check(new_result == resulting_money)

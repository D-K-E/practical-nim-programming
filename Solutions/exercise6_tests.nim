
import unittest
from exercise6 import dollar_tax_add
from parseutils import parseInt
from math import round

# Tests for Calculate %8 Sales Tax + Money -----------------

suite "Test the operations of Calculate %8 Sales Tax + Money":

  setup:
    let
      money: int = 2
      line_test: string = """Enter the amount in dollars. Don't forget.
The final result would be rounded to pennies: 2"""
      resulting_money: int = 216
      tax: float = 16.0

  test "Check line Extraction for 2 dollars input":
    var
      process_char: int
      check_money: int
    process_char = parseInt(line_test, check_money)

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
    new_result = dollar_tax_add(line_test)
    check(new_result == resulting_money)

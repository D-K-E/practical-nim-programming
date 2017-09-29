#[
############# Calculate the Grade #############

Author: Kaan Eraslan

Purpose: Calculates the grade from the given score.

Usage: Run the program, enter the score.

]#

# Package Declarations

from parseutils import parseInt

# End of Package Declarations

echo "I know, I know, what is his/her grade ? Come on, try me. Come on, I dare you ... "

var
  score_str: string = readLine(stdin)
  score: int
  processed_chars: int

processed_chars = parseInt(score_str, score)

case score
of 0..60: echo "That's an F. Poor thing, you are a cruel teacher, you know that ..."
of 61..70: echo "That's a D. Almost, almost. With your teaching, she/he must be really smart"
of 71..80: echo "Oh, C. That's what I got most of the time. She/he must be super cool."
of 81..90: echo "Hmm B. I don't know what to say, what do you think..."
of 91..100: echo "An A. iqr kA.t (excellent work in ancient egyptian)"
else: discard

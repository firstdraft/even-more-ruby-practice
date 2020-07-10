# Ruby Practice

Run your Ruby file by typing `ruby ` and then the name of the file you want to run in the Terminal.

If we want to run `main.rb`, we can write the command:

```bash
ruby main.rb
```

To re-run this command, you can use the UP and DOWN arrow keys to look at the history of all commands you've run in a particular Terminal.

### count_the

Write a program that:  
Asks the user to enter a sentence and then finds the number of times 'the' appears in the given string.  
Your program should print: `'the' appeared x times`

### secret_encoder

Create an encoder that will allow you to enter a string and replace the vowels. 
Here is our secret code, don't tell anyone... a = 1, e = 2, i = 3, o = 4, u = 5.  
Your program should print the encoded message.

### secret_decorder

We have a way to encode our messages, now can you write a way to decode them? 
Remember our sercret code: a = 1, e = 2, i = 3, o = 4, u = 5.  
Your program should print the decoded message. (Make sure to capitalize the first word)

### character_types

Write a program that:  
  Asks the user to enter a sentence.  
  Counts the total number of letters in the given sentence.  
  Counts the total number of spaces in the given sentence.  
  Counts the total numbers of digits in the given sentence.  
  Prints all the above information out.

Example:
```bash
"Enter a sentence:"
here 12 plus 25
"Number of letters in the string is: 8"
"Number of spaces in the string is: 3"
"Number of digits in the string is: 4"
```
### dice_roll

You plan to roll a die.  
Ask the user for a guess at what number the die will land on and then generate a random dice roll (a number between 1 and 6).  
If the User guessed right, your program should print `You guessed correctly`  
If they didn't, you program should print `Shame on you. The die landed on x`

Hint: Use the `rand` method for the dice roll.

### leap_year

The program should:
  Ask the user to input a year (Say 2016)  
  Determine if the given year is a leap year  
  If the given year is a leap year, then print: "2016 is a leap year!"  
  Otherwise, print: "2015 is not a leap year."

Hint:
  To determine whether a year is a leap year, follow these steps:

  1. If the year is divisible by 4, go to step 2. Otherwise, go to step 5.
  2. If the year is divisible by 100, go to step 3. Otherwise, go to step 4.
  3. If the year is divisible by 400, go to step 4. Otherwise, go to step 5.
  4. The year is a leap year (it has 366 days).
  5. The year is not a leap year (it has 365 days).

### darts

Write a program that prints the earned points of a single toss of a Darts game.

Darts is a game where players throw darts to a target.

In our particular instance of the game, the target rewards with 4 different amounts of points,
 depending on where the dart lands.

If the dart lands:  
outside the target: 0 points.  
in the outer circle of the target: 1 point.  
in the middle circle of the target: 5 points.  
in the inner circle of the target: 10 points.  
 
 The outer circle has a radius of 10 units
   (this is equivalent to the total radius for the entire target),
   the middle circle a radius of 5 units, and the inner circle a radius of 1 unit.
   They are all centered to the same point (that is, the circles are concentric) defined by the coordinates (0, 0).

Write a program that asks for a point in the target
 (defined by its real Cartesian coordinates x and y),
 prints the correct amount earned by a dart landing in that point.

Your program should print: `x points`

Hint: the formula to find a circle with the center point (j, k) and radius (r):
   (x-j)^2 + (y-k)^2 = r^2


### think_fast.rb

We have to expect the unexpected — if users can find a way to break our code by navigating through it in a sequence that we didn't predict, they 100% will.

Suppose that your program has to deal with the object inside the variable some_random_input, starting on Line 18. If the object is:

a String: downcase it and print
a Time: figure out the day of the week, downcased, and print
an Integer: figure out whether it's odd or even and print
a Symbol: downcase it and print
nil: print "no object provided"
true: print "you may pass"
false: print "you may not pass"
a Hash: print the list of keys within the Hash, as an Array.


How would you start to go about it?

---

Remember that, as developers, we're inventors — exploring the unknown and solving new problems that come our way. The aren't formulas to look up and follow for every situation; just tools in our belts. One of our most important tools for dealing with the unknown is conditionals.

https://chapters.firstdraft.com/chapters/763

---

Next, remember that there's a method called .class that we can call on any Ruby object to find out what kind of thing it is. We first met it way back in the Integer Chapter, and we used it a lot especially when exploring an API response, which could come back to us in different shapes and sizes.

---

There are no automated tests for this REPL, it's mostly a thought exercise. But try to flesh out your answer and think of questions to for us to discuss.

### accumulate.rb

Add some code to this program to, at the end, print the history of answers given while being pestered whether we're there yet.

For example,
```bash
"Are we there yet?"
 No
"Are we there yet?"
 No
"Are we there yet?"
 ... no
"Are we there yet?"
 NO
"Are we there yet?"
 @#*(&$*(@&%#
"Are we there yet?"
 yes
["no", "... no", "no", "@#*(&$*(@&%#", "yes"]
```

Key output

Note that at the end of the dialogue, it printed an Array with:
```bash
["no", "... no", "no", "@#*(&$*(@&%#", "yes"]
```

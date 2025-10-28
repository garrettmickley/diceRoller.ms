// Ask for Dice
dice = 0
while dice < 1
	print "How many dice do you need to roll?"
	dice = val(input("> "))
	if dice < 1 then // Check if number
		print "That's not a valid number. Try again."
	end if
end while

// Ask for Sides
sides = 0
while sides < 2
	print "How many sides do the dice need?"
	sides = val(input("> "))
	if sides < 2 then // Check if number
		print "Sides must be 2 or more."
	end if
end while

// Call Function
diceRoller(dice, sides)

//The Function
diceRoller = function(dice, sides)
	print "Rolling " + dice + "d" + sides
	rolls = []
	for i in range(1, dice)
		roll = floor(rnd*sides)+1
		rolls.push(roll)
		print "Roll " + i + ": [" + roll + "]"
	end for
	print "Total of all rolls: " + rolls.sum
end function

# Ju'el is a quaint town (with many hidden wonders) on the edge of a great desert.
# Ju'el (and Vesna, the greater world) are creations from the imagination of my friend Madeleine Ebacher, who has graciously allowed me to make a little game set here.

def roll_dice
	1 + rand(19).to_i
end

def user_help
  "I don't get it, type help or ? for commands"
  if $stdin.gets.chomp.include? 'help'
    puts "helptext"
  else 
  	Finns_Inn
  end
end

def cold_n_tasty
	puts
	puts "This is an ice cream shop! Ice cream is a novelty in this world;"
	puts "you've never seen it before."
	puts "How much ice cream do you eat?"

	print "> "
	choice = $stdin.gets.chomp

	# choice.match(/scoops|1|2/)
	if choice.include?("scoops") or choice.include?("1") or choice.include?("2")
		how_much = choice.to_i
	else choice.include? "no" or "can't" or "money"
		dead("You don't have the money?! The cute elf who *invented ice cream* shakes her head in dismay. You wander sadly back to the Inn.")
		Finns_Inn()
	end


	if how_much > 4
		how_much = choice.to_i
		dead("Greedy bastard!")
	else
		puts "It is DELICIOUS. You enjoy it on your way back to the inn."
		Finns_Inn()
	end
end


def celas_fire()
	puts
	puts "You've made it to Cela's Fire, the finest blacksmith shop in all Ju'el. Cela herself is here,"
	puts "talking terms with a happy-looking half-elf. You spend a while just taking in the beautiful weapons,"
	puts "really appreciating the master craftsmanship. Cela is a true artist. Would you like to buy a weapon?"
	puts "They're breathtakingly expensive and it might leave you without money to stay at the Inn tonight,"
	puts "But Ivellios the half-elf *does* seem to be very happy with his purchases."
	puts

	print "> "
	buy_weapon = $stdin.gets.chomp

	if buy_weapon == "yes"
		puts "Sweet! Cela herself studies you for a long moment. \'Yes, for you, I think...a sword. That will be 100 gold pieces.\'"
		puts "Do you have 100 gold?"
		puts "No, you don't. Cela shakes her head and turns her back." 
		puts "She gazes wistfully at a portrait of her and a girl who must be her daughter."
		puts
		Finns_Inn()
	elsif buy_weapon == "no"
		puts "Probably for the best, you really don't have the money to spare."
		puts "But Ivellios is totally awesome and tells you all about his soul-bonded axe. The two of you head back to the Inn for a drink."
		Finns_Inn()
	else
		dead("Is this too confusing for you? Try again.")
	end
end



def cats_eye()
	puts
	puts "You enter The Cat's Eye, a wonderful little shop where all the items are cat themed!"
	puts "There are cat-themed umbrellas, and goggles, and playing cards,"
	puts "and basically anything you can think of; somebody put a cat on it."
	puts "There's also a one-armed gnome. With a mischevious grin, he introduces himself as Goon"
	puts "and invites you to shoplift with him. Are you gonna do it? He's eyeing those goggles..."

	print "> "
	shoplift = $stdin.gets.chomp

	if shoplift == "yes"
		puts "Awesome! Goon is excited and whispers to you to slip some of those cats-eye goggles into your pocket" 
		puts "while he distracts the shopkeep."
	else shoplift == "no"
		puts "You said no, but...he's REALLY charismatic." 
		puts "You find yourself compelled to slip some cats-eye goggles into your pocket while Goon distracts the shopkeep."
	end

	puts "Rolling a die"
	5.times do
	 sleep(0.5)
	 print '.'
	end
	puts

	dice_roll = roll_dice # calls a method above
	puts "You rolled a #{dice_roll}"

	if dice_roll >= 10
		puts "Success! You and Goon head back to Finn's Inn to split up the goods and have a drink."
		Finns_Inn()
	else dice_roll < 10
		puts "Whomp whomp. You got caught!"
		dead("The shopkeep sics his herd of cats on you and has you tossed out of town.")
	end
end

def sss()
	puts
	puts "'\ Welcome to the Ju'el Shitthicks Spellcaster Station! We've got evvvverything you need for a successful adventure!\'"
	puts "cries the shopkeep."
	puts "'\ We've got stores evvverywhere across the world. Would you like to be a member? Discounts in every corner of the world...\'"
	puts "What do you think, should you get a membership card? The orc in the corner is shaking her head reeeal subtly."

	print "> "
	choice = $stdin.gets.chomp

	if choice == "yes"
		puts "You accept the membership card and a strange chill goes through you."
		puts "\'Now you can only shop here for the rest of your life!\'' says the shopkeeper." 
		puts "\'And I wouldn't try to shop elsewhere. This card...ensures your loyalty. Heh heh.\'"
		puts "Ashamed, you walk back to the Inn without even buying anything."
		Finns_Inn()
	else choice == "no"
		puts "Probably a good choice. The membership cards ensure your loyalty...rather vigorously."
		puts "Would you like to buy a pretty crown, a wooden shield, or a swan made of a material you can't identify?"
		print "> "
		purchase = $stdin.gets.chomp
		if purchase == "crown"
			puts "Ooh, pretty! You feel jaunty and royal all the way back to the Inn."
			Finns_Inn()
		elsif purchase == "shield"
			puts "Nice. You feel more secure as you strut all the way back to the Inn."
			Finns_Inn()
		else purchase == "swan"
			puts "Amazing! This little swan will fly around and gather intelligence for you. It whispers to you that you should go see...the Monster."
			monster()
		end
	end
end



def monster()
	puts "You've reached the Ju'el Monster! Is it day or night when you arrive?"

	print "> "
	time = $stdin.gets.chomp

	if time == "day"
		puts "The Ju'el Monster is a giant statute of a dinosaur! It looks like a T-Rex with a huge, powerful body and tiny arms."
		puts "A very very VERY old wizard dressed all in purple is taking a nap between two of the toes."
		puts "He looks comfy. Better not disturb him."
		Finns_Inn()
	end
	
	if time == "night"
		puts "The Ju'el Monster is a giant statute of a dinosaur! It looks like a T-Rex with a huge, powerful body and tiny arms."
		puts "A very very VERY old wizard dressed all in purple is taking a nap between two of the toes. An odd growling, clucking, wailing noise startles both of you."
		puts "The wizard introduces himself to you as Valarius The Purple, which is apropos considering every single thing he's wearing is purple."
		puts "You both hear the noise again!"
		puts "Oh man! The noise is coming from a creature that looks exactly like the statute, only smaller and much...sadder?"
		puts "Do you try to kill it?"

		print "> "
		kill = $stdin.gets.chomp

		if kill == "yes"
			puts "You go into hero mode. Swinging whatever weapon you've managed to acquire or your fists if not, you lash out at the monster!"
			puts "Unfortunately for you, this monster doesn't want to fight. It starts...crying...and tries to run away. It's ungainly, though, and tramples you in the process."
			dead("The monster killed you accidentally.")
		elsif kill == "no"
			puts "The purple wizard cocks his head, and then waves his hands around and mutters a little bit."
			puts "\'I can understand it!\' he cries. \'It's saying it's...enchanted. By a necklace it can't reach. Oh, poor creature!\'"
			puts "The wizard reaches his hands out towards the monster and then reaches *through* the monster somehow. His hands emerge with a necklace, and the monster turns into a lovely young woman."
			puts "Do you grab the pretty, shiny necklace?"

			print "> "
			grab_necklace = $stdin.gets.chomp

			if grab_necklace == "yes"
				necklace_grab()
			else grab_necklace == "no"
				puts "Triumph! The wizard, who knows how to handle these things, puts the necklace safely in his Bag of Holding."
				puts "He slaps you on the back, and he and you and the now-free young woman head to Finn's Inn to celebrate!"
				puts "CONGRATULATIONS, YOU WIN! You'll do just fine in The Wheel, buddy."
				puts
				Process.exit(0)
			end
		else 
			dead("Learn to type yes or no, idiot!")
		end
	end
end


def dead(why)
	puts "#{why} You're not a survivor, huh? Maybe you shouldn't go to The Wheel."
	Process.exit(0)
end


def necklace_grab()
	puts "You greedy so-and-so! NEVER touch magical items you don't know anything about."
	dead("You look down, only to find that YOU are the Ju'el monster now.")
end


def Finns_Inn() #Finns Inn is the home base/start
	puts
	puts "You are an adventurer trying to get to The Wheel, a big city across the desert."
	puts "You're staying at Finn's Inn. The Inn is always open."
	puts "It's got coziness and drinks."
	puts "Your caravan leaves in three days and three nights."
	puts "Until then, let's explore the quaint town of Ju'el!"
	puts "Which direction will you go?"
	puts
	puts

	print "> "
	direction = $stdin.gets.chomp

	if direction == "north"
		cold_n_tasty()
	elsif direction == "south"
		celas_fire()
	elsif direction == "east"
		cats_eye()
	elsif direction == "west"
		sss()
	elsif direction == "up" or "down" or "left" or "right"
		monster()
    else
    	user_help
	end
end

Finns_Inn()

@answers = ['It is certain', 
	'It is decidedly so', 
	'Without a doubt', 
	'Yes, definitely', 
	'You may rely on it', 
	'As I see it, yes', 
	'Most likely', 
	'Outlook good', 
	'Yes', 
	'Signs point to yes', 
	'Reply hazy...try again', 
	'Ask again later', 
	'Better not tell you now', 
	'Cannot predict now', 
	'Concentrate and ask again', 
	"Don't count on it", 
	'My reply is no', 
	'My sources say no', 
	'Outlook not so good', 
	'Very doubtful']


def menu
	puts 'MAIN MENU'
	puts '1. Ask a question!'
	puts '2. See & edit responses'
	puts '3. Reset'
	puts '4. QUIT'
	print "\nPlease select a menu option >"
	menu_option = gets.strip.downcase

	case menu_option
	when '1'
		wish
	when '2'
		puts "Now you can add your own questions"
	when '3', 'reset'
		puts "This will reset the program"
	when '4', 'quit'
		abort('Thanks for using the Magic 8 Ball!')
	else
		puts "This is not a valid menu option"
		menu
	end
end	


# gets question/wish
def wish
	while true
		puts "In your heart of hearts, what is it that you wish to know? (enter 'back' to go back to the main menu)"
		wish = gets.strip
		if wish.downcase == 'quit'
			abort('Thanks for using the Magic 8 Ball!')
		elsif wish == 'add_answers'
			puts "\n********************************************************************"
			puts "CONGRATULATIONS!"
			puts "You have accessed the special bonus feature!!!"
			puts "Now you can add your own answers :)"
			puts "********************************************************************\n"
			bonus
		elsif wish.downcase == 'back' 
			menu
		else
			answer
		end
	end
end

def answer
	puts "\nShake, shake, shake!"
	puts 'The Magic 8 Ball\'s answer is:'
	puts @answers.sample
	puts "\n"
end


def bonus
	puts 'What super special answer would you like to add'
	puts '1. Add answers'
	# puts '2. '
	# bonus_select = gets.strip

	# case bonus_select
	# when condition
		
	# end
end




def main
	menu
	while true
		menu
	end
end



puts 'Welcome to the Magic 8 Ball!'
main









# valid = choice =~ /(\d+.\d+)|d+/



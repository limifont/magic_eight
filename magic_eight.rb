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

@bonus_answers = @answers.clone

def menu(use_bonus_answers)
	puts 'MAIN MENU'
	puts '1. Ask a question!'
	puts '2. QUIT'
	
	if (use_bonus_answers)
		puts '3. RESET'
	end	
	
	print "\nPlease select a menu option >"
	menu_option = gets.strip.downcase


	case menu_option
	when '1'
		wish(use_bonus_answers)
	when '2', 'quit'
		abort('Thanks for using the Magic 8 Ball!')
	when '3', 'reset'
		menu(false)
	else
		puts "This is not a valid menu option"
		menu(use_bonus_answers)
	end 
end	


# gets question/wish
def wish(use_bonus_answers)
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
			menu(use_bonus_answers)
		elsif wish.downcase == 'why is nathan so cool?'
			puts '\''
			puts 'Because he is the best person on the whole planet earth.'
			puts 'If you don\'t already know him, you should get to.'
			puts '\''
		elsif wish.downcase != 'quit'
			answer(use_bonus_answers)
		end
	end
end


def answer(use_bonus_answers) 
	puts "\nShake, shake, shake!"
	puts 'The Magic 8 Ball\'s answer is:'
	if use_bonus_answers
		puts @bonus_answers.sample
	else 
		puts @answers.sample
	end
	puts "\n"
end


def bonus
	while true	
		puts 'What super special answer would you like to add?'
		puts "\nEnter your answer:"
		bonus_answer = gets.strip


		if @answers.include?(bonus_answer)
			puts 'Sorry, you\'ll have to input a new answer.'
			puts 'This answer is already in the list.'
			menu(true)
		elsif bonus_answer == 'back'
			menu(true)
		elsif bonus_answer.downcase == 'quit'
			abort('Thanks for using the Magic 8 Ball!')
		else
			@bonus_answers << bonus_answer
			puts 'Would you like to add any more answers? (y/n)'
			yes_or_no = gets.strip.downcase

			if yes_or_no == 'yes'
				break
			elsif yes_or_no == 'no'
				menu(true)
			end	
		end
	end
end


puts 'Welcome to the Magic 8 Ball!'
menu(false)










# valid = choice =~ /(\d+.\d+)|d+/



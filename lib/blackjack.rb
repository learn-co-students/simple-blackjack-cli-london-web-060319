def welcome
   puts "Welcome to the Blackjack Table"
end

def deal_card
   rand(1..11) #get random number between 1 and 11
end

def display_card_total(card_total)
   puts "Your cards add up to #{card_total}"
end

def prompt_user
   puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
   gets.chomp #get user input
end

def end_game (card_total)
   puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
   sum = deal_card + deal_card #get the total card number of 2 cards
   display_card_total(sum) #show the total number from above
   sum #ruby always return the last value line
end

def hit? (num)
   prompt_user
   input = get_user_input #get the value from the user input
   if input == "s"
      num
   elsif input == "h"
      num += deal_card
   else
      invalid_command
      prompt_user
   end
   num #return total number after the user makes a choice
end

def invalid_command
   puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
   welcome
   card_total = initial_round #get the total number
   until card_total > 21 #loop will keep going until the total reaches 21
      card_total = hit?(card_total) #after user make a choice, the total number will be added
      display_card_total(card_total)
   end
   end_game(card_total)
end
    

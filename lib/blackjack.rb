def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  card = rand(1..11)
end

def display_card_total(total)
  puts "Your cards add up to #{total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(total)
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  card1 = deal_card 
  card2 = deal_card
  card_sum = card1 + card2
  display_card_total(card_sum)
  return card_sum
end

def hit?(number)
  prompt_user
  hit_or_stay = get_user_input
  case hit_or_stay
    when "h"
      number += deal_card
    when "s"
      number
    else
      invalid_command
      prompt_user
    end
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  until card_total > 21 
   card_total = hit?(card_total)
   display_card_total(card_total)
  end
    end_game(card_total)
end
    

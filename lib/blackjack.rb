def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(n)
  puts "Your cards add up to #{n}"
end

def prompt_user
  puts 'Type \'h\' to hit or \'s\' to stay'
end

def get_user_input
  gets.chomp
end

def end_game(n)
  puts "Sorry, you hit #{n}. Thanks for playing!"
end

def initial_round
  sum = deal_card + deal_card
  display_card_total(sum)
  sum
end

def hit?(a)
  prompt_user
  o = get_user_input

  if o == 'h'
    a + deal_card
  else
    a
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

  score = initial_round  

  until score > 21 do
    score = hit?(score)
    display_card_total(score)
  end

  end_game(score)
end

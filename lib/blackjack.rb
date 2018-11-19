def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(10) + 1
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  return gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  sum = 0
  sum += deal_card
  sum += deal_card
  display_card_total(sum)
  return sum
end

def hit?(card_total)
  prompt_user
  answer = get_user_input
  
  if answer != "h" || get_user_input != "s"
    invalid_command
    prompt_user
  elsif answer == "s"
    card_total += 0
  elsif answer == "h"
    card_total += deal_card
  end
  return card_total
end

def invalid_command
  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  
  initial_round
  hit?
end
    

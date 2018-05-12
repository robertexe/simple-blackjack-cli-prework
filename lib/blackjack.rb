def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
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
  card_one = deal_card
  card_two = deal_card
  ##puts "#{card_one} and #{card_two} -----------"
  card_total = card_one + card_two
  display_card_total(card_total)
  return card_total
end

def hit?(card_total)
  prompt_user
  action = get_user_input
  case action
  when 's'
    ##
    return card_total
  when 'h'
    another_card = deal_card
    ##puts "handing out #{another_card}"
    card_total += another_card
    display_card_total(card_total)
    return card_total
  else
    invalid_command
    return card_total
  end
end

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  sum = initial_round
  until sum > 21
    sum = hit?(sum)
    ##display_card_total(sum)
  end
  end_game(sum)
end

require './question'

player1Lives = 3
player2Lives = 3

while (player1Lives > 0 || player2Lives > 0) do

    puts "P1: Enter first number:"
    number1 = (gets.chomp).to_i
    puts "P1: Enter Second number:"
    number2 = (gets.chomp).to_i

    q = Questions.new(number1, number2)
    puts q.state

    puts "P1: Enter your answer:"
    answer = (gets.chomp).to_i
    
    puts q.decision(answer)
    puts q.calculation

    if ((number1 + number2) != answer) 
      player1Lives -=1
    end

    puts "P1: #{player1Lives}/3 vs P2: #{player2Lives}/3"

    if (player1Lives == 0 || player2Lives == 0)
      if (player1Lives > player2Lives)
        puts "Player1 wins with a score of #{player1Lives}/3"
      else
        puts "Player2 wins with a score of #{player2Lives}/3"
      end
      puts q.gameOver
      break
    end
    
# ###### for players2
    puts "P2: Enter first number:"
    number1 = (gets.chomp).to_i
    puts "P2: Enter Second number:"
    number2 = (gets.chomp).to_i

    q = Questions.new(number1, number2)
    puts q.state

    puts "P2: Enter your answer:"
    answer = (gets.chomp).to_i
    
    puts q.decision(answer)
    puts q.calculation

    if ((number1 + number2) != answer) 
      player2Lives -=1
    end

    puts "P1: #{player1Lives}/3 vs P2: #{player2Lives}/3"

    if (player1Lives == 0 || player2Lives == 0)
      if (player1Lives > player2Lives)
        puts "Player1 wins with a score of #{player1Lives}/3"
      else
        puts "Player2 wins with a score of #{player2Lives}/3"
      end
      puts q.gameOver
      break
    end
  end
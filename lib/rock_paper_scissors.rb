class String
  define_method(:beats?) do |choice2|
    choice1 = self
    #is_winner = false # temporary assignment just to create is_winner as a boolean

    if choice1.eql?("rock")
      if choice2.eql?("scissors")
        is_winner = true
      else
        is_winner = false
      end
    elsif choice1.eql?("paper")
      if choice2.eql?("rock")
        is_winner = true
      else
        is_winner = false
      end
    elsif choice1.eql?("scissors")
      if choice2.eql?("paper")
        is_winner = true
      else
        is_winner = false
      end
    end
  end

  define_method(:determine_winner) do |input2|
      input1 = self

      player1_result = input1.beats?(input2)
      player2_result = input2.beats?(input1)

      if player1_result.eql?(true) #player 1 wins
        winner_string = "Player 1 wins"
      elsif player2_result.eql?(true) #player 2 wins
        winner_string = "Player 2 wins"
      else
        winner_string = "tie"
      end

      if (input1 != "rock" && input1 != "scissors" && input1 != "paper") || (input2 != "rock" && input2 != "scissors" && input2 != "paper")
        winner_string = "Invalid entry. Try again."
      end

      winner_string
  end

  define_method(:play) do
    input = self
    tools = ["rock","paper","scissors"]
    computer = tools[rand(3)]

    winner_string = input.determine_winner(computer)

    if winner_string == "Player 2 wins"
      winner_string = "Computer wins"
    end

    winner_string
  end


end

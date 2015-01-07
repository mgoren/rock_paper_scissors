class String
  define_method(:beats?) do |choice2|
    choice1 = self
    is_winner = false # temporary assignment just to create is_winner as a boolean

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
end

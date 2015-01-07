class String
  define_method(:beats?) do |opponents_choice|
    if self == 'rock' && opponents_choice == 'scissors'
      "You Win!"
    elsif self == 'scissors' && opponents_choice == 'paper'
      "You Win!"
    elsif self == 'paper' && opponents_choice == 'rock'
      "You Win!"
    elsif self == opponents_choice
      "The Game is a Draw!"
    else
      "You Lost!"
    end
  end
end
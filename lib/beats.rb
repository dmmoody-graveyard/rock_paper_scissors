class String
  define_method(:beats) do |opponents_choice|
    if self == 'rock' && opponents_choice == 'scissors'
      true
    elsif self == 'scissors' && opponents_choice == 'paper'
      true
    elsif self == 'paper' && opponents_choice == 'rock'
      true
    else
      false
    end
  end
end
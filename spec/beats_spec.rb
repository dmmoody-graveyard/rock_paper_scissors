require('rspec')
require('beats')

describe('String#beats?') do
  it("returns 'You Win!' if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to eq("You Win!")
  end

  it('returns "You Win!" if scissors is the object and paper is the argument') do
    expect("scissors".beats?("paper")).to eq("You Win!")
  end

  it('returns "You Win!" if paper is the object and rock is the argument') do
    expect("paper".beats?("rock")).to eq("You Win!")
  end

  it('returns "Game is a Draw!" if paper is the object and paper is the argument') do
    expect("paper".beats?("paper")).to eq("The Game is a Draw!")
  end

  it('returns "You Lost!" if scissors and rock is the argument') do
    expect("scissors".beats?("rock")).to eq("You Lost!")
  end
end
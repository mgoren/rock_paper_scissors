require('rspec')
require('rock_paper_scissors')

describe('string#beats?') do

  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq(true))
  end

  it("returns true if paper is the object and rock is the argument") do
    expect("paper".beats?("rock")).to(eq(true))
  end

  it("returns true if scissors is the object and paper is the argument") do
    expect("scissors".beats?("paper")).to(eq(true))
  end

  it("returns false if paper is the object and scissors is the argument") do
    expect("paper".beats?("scissors")).to(eq(false))
  end

  it("returns false if rock is the object and rock is the argument") do
    expect("rock".beats?("rock")).to(eq(false))
  end

  it("returns 'player 1 wins' when determine_winner method is called on rock & scissors") do
    expect("rock".determine_winner("scissors")).to(eq("Player 1 wins"))
  end

  it("informs user if invalid input is entered") do
    expect("sdlkfjsdf".determine_winner("rock")).to(eq("Invalid entry. Try again."))
  end

  it("works as a one player game with computer always choosing paper") do
      expect("rock".play()).to(eq("Computer wins"))
  end
  
end

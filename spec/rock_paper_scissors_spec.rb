require('rspec')
require('rock_paper_scissors_sinatra')

describe("String#rock_paper_scissors") do
  it("It takes the user input for the game and determines the result of the game") do
    expect("rock".rock_paper_scissors()).to(eq("tie"))
  end

  it("It takes the user input for the game and determines the result of the game") do
    expect("paper".rock_paper_scissors()).to(eq("win"))
  end

  it("Takes the user input for the game and determines the result of the game") do
    expect("scissors".rock_paper_scissors()).to(eq("lose"))
  end

end

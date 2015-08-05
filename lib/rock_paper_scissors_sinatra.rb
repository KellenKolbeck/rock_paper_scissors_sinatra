class String
  define_method(:rock_paper_scissors) do
    output_check = {"rock" => 0, "paper" => 1, "scissors" => 2}
# Assuming computer entered rock for each turn
    user_input=output_check[self]
    computer_input=rand(0..2)
    if user_input==computer_input
      "tie"
    elsif user_input==0 && computer_input==2 || user_input==1 && computer_input==0 || user_input==2 && computer_input==1
      "win"
    else
      "lose"
    end
  end
end

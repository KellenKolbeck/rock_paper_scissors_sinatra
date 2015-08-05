require ('capybara/rspec')
require ('./app')
require ('rock_paper_scissors_sinatra')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('Rock, Paper, Scissors', {:type => :feature}) do
  it('Determines the outcome of a rock, paper, scissors game') do
    visit('/')
    fill_in('game', :with => 'rock')
    click_button('Send')
    expect(page).to have_content('tie')
  end
end

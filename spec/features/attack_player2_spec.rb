require_relative "web_helpers"

# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
feature "attack player 2" do
  scenario 'can attack player2' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content('Ollie attacked Cosmin')
  end
end

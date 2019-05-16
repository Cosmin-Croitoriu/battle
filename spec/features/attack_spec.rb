require_relative "web_helpers"

# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation
# feature "Attacking" do
#   scenario 'can attack player2' do
#     sign_in_and_play
#     click_button "Attack!"
#     expect(page).to have_content('Ollie attacked Cosmin')
#   end
# end

# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP by 10
feature "Attacking" do
  scenario 'reduce player 2 hitpoints' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).not_to have_content('Cosmin: 60HP')
    expect(page).to have_content('Cosmin: 50HP')
  end
end


require_relative "web_helpers"

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points
feature "see player2's hitpoints" do
  scenario 'can display hitpoints for player2' do
    sign_in_and_play
    expect(page).to have_content('Cosmin: 60HP')
  end
end

# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'testing player name page' do
  scenario 'Can enter player names and see them' do
    visit('/')
    fill_in :player1, with: 'Ollie'
    fill_in :player2, with: 'Cosmin'
    click_button('Start')
    expect(page).to have_content('')
  end
end

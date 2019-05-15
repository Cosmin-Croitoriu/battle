require_relative 'web_helpers'
# As two Players,
# So we can play a personalised game of Battle,
# We want to Start a fight by entering our names and seeing them

feature 'testing player name page' do
  scenario 'Can enter player names and see them' do
   sign_in_and_play
    expect(page).to have_content('')
  end
end

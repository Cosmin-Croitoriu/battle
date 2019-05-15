def sign_in_and_play
  visit('/')
  fill_in :player1, with: 'Ollie'
  fill_in :player2, with: 'Cosmin'
  click_button('Start')
end

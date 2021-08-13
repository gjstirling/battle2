# creates sign in for test DRY code

def sign_in_and_play
  visit('/')
  fill_in(:player_one, with: 'Graeme')
  fill_in(:player_two, with: 'Ahsan')
  click_button('Submit')
end 
feature 'Entering player names' do
  scenario 'display names' do
    sign_in_and_play
    #save_and_open_page
    expect(page).to have_content 'Graeme Vs Ahsan'
  end
end

feature 'Display Hit points' do 
  scenario 'Player 2 HP' do 
    sign_in_and_play
    expect(page).to have_content 'Ahsan: 60HP'
  end
end

#   feature 'Can attack a player' do
#     scenario 'Attack player two and get confirmation' do
#       sign_in_and_play
#       click_button('Attack')
#       expect(page).to have_content 'Graeme has attacked Ahsan'
#     end
#   end
 
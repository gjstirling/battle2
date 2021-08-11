feature 'Entering player names' do
  scenario 'display names' do
    visit('/')
    fill_in(:player_one, with: 'Graeme')
    fill_in(:player_two, with: 'Ahsan')
    click_button('Submit')
    save_and_open_page
    expect(page).to have_content 'Graeme Vs Ahsan'
  end
end
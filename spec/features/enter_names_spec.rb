feature 'fill in player name' do
  scenario 'can allow 2 players to enter names and start a fight' do
    visit('/')
    fill_in :player_1_name, with: 'Thanos'
    fill_in :player_2_name, with: 'Thor'
    click_button 'Submit'
    expect(page).to have_content 'Thanos vs. Thor'
  end
end

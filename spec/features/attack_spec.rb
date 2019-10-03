
feature '#attack' do
  scenario 'allows player_1 to attack player_2 and get a confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "#{@player_1_name} attacked #{@player_2_name}"
  end
end

feature '#attack' do
  scenario 'allows player_1 to attack player_2 and get a confirmation' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "#{@player_1_name} attacked #{@player_2_name}"
  end

  scenario 'player_1 attacks player_2 and takes off 10hp' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content "#{@player_2_name}: 50HP"
  end

  scenario 'allows player_2 to attack player_1 and get a confirmation' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Switch-Turn'
    click_button 'Attack'
    expect(page).to have_content "#{@player_2_name} attacked #{@player_1_name}"
  end

  scenario 'player_1 attacks player_2 and takes off 10hp' do
    sign_in_and_play
    click_button 'Attack'
    click_button 'Switch-Turn'
    click_button 'Attack'
    expect(page).to have_content "#{@player_1_name}: 50HP"
  end
end

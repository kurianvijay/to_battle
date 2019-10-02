feature 'fill in player name' do
  scenario 'can allow 2 players to enter names and start a fight' do
    sign_in_and_play
    expect(page).to have_content 'Thanos vs. Thor'
  end
end

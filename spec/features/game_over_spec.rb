feature 'shows losing player' do
  it 'Tells the losing player they have 0 HP' do
    sign_in_and_play
    11.times { attack_and_confirm }
    expect(page).to have_content "Thor- You lose!!"
  end
end

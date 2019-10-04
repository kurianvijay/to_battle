feature '#switch_turns' do

  feature "players switch turns between each other" do
    scenario "it allows a player to switch to attack" do
      sign_in_and_play
      expect(page).to have_content "Thanos's turn"
    end
  end

  # feature "players switch turns between each other" do
  #   scenario "it allows a player to switch to attack" do
  #     sign_in_and_play
  #     click_button 'Attack'
  #     expect(page).to have_content "Thor's turn"
  #   end
  # end

end

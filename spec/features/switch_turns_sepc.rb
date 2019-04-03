describe 'Switch turns' do

  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Dave's Turn"
    end

    secnario 'after player 1 attacks' do
      sign_in_and_play
      click_button "Attack"
      click_link "OK"
      expect(page).not_to have_content "Dave's Turn"
      expec(page).to have_content "Mitten's Turn"
    end
  end
end

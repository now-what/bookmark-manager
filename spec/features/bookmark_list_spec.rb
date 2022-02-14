feature 'view the list of all bookmarks' do
    scenario 'user is presented with a list of all bookmarks' do
        visit "/"
        click_button "List"
        expect(page).to have_content("Website 1")
        expect(page).to have_content("Website 2")
    end
end
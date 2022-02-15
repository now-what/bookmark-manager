feature 'view the list of all bookmarks' do
    scenario 'user is presented with a list of all bookmarks' do
        visit "/bookmarks"
        expect(page).to have_content("http://www.makersacademy.com/")
        expect(page).to have_content("http://www.google.com/")
    end
end
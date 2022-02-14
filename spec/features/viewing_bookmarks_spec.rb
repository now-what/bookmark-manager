feature "Viewing bookmarks" do 
    scenario "Displays bookmarks in that route" do
        visit "/"
        click_button "List"
        expect(page).to have_content "Bookmark name"
    end 
end 
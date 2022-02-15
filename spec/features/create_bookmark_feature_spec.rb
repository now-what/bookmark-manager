feature "add bookmark" do
  scenario "user inputs a bookmark and it gets added to the list" do
    visit '/bookmarks/add'
    fill_in :url, with: "http://www.gmail.com"
    click_button "Add"
    expect(page).to have_content "http://www.gmail.com"
  end
end
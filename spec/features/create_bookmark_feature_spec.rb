feature "add bookmark" do
  scenario "user inputs a bookmark and it gets added to the list" do
    visit '/bookmarks/add'
    fill_in :url, with: "http://www.gmail.com"
    fill_in :title, with: "Gmail"
    click_button "Add"
    expect(page).to have_content "Gmail"
  end
end
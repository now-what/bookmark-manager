feature 'testing homepage' do
  scenario 'homepage should contain specifc word' do
    visit('/')
    expect(page).to have_content('Bookmark')
  end
end

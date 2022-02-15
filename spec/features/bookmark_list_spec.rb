feature 'view the list of all bookmarks' do
    scenario 'user is presented with a list of all bookmarks' do

        connection = PG.connect(dbname: 'bookmark_manager_test')

        connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');")
        connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
        connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

        visit "/bookmarks"
        expect(page).to have_content("http://www.makersacademy.com")
        expect(page).to have_content("http://www.google.com")
    end
end
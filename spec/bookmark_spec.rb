require 'bookmark'

describe Bookmark do   

    describe "#all" do
        it "returns a list of bookmarks" do 
            Bookmark.create(url: "http://www.makersacademy.com")
            Bookmark.create(url: "http://www.destroyallsoftware.com")
            Bookmark.create(url: "http://www.google.com")
            bookmarks = Bookmark.all 
            expect(bookmarks).to include "http://www.makersacademy.com"
            expect(bookmarks).to include "http://www.destroyallsoftware.com"
            expect(bookmarks).to include "http://www.google.com"
        end 
    end 

    describe '#add' do
        it 'creates a new bookmark' do
            Bookmark.add(url: 'http://www.gmail.com')
            expect(Bookmark.all).to include 'http://www.gmail.com'
        end
    end
end 
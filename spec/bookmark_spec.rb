require 'bookmark'

describe Bookmark do   

    describe "#all" do
        it "returns a list of bookmarks" do 
            Bookmark.add(url: "http://www.makersacademy.com", title: 'Makers')
            Bookmark.add(url: "http://www.destroyallsoftware.com", title: 'Destroy')
            Bookmark.add(url: "http://www.google.com", title: 'Google')
            bookmarks = Bookmark.all 
            expect(bookmarks).to include "Makers"
            expect(bookmarks).to include "Destroy"
            expect(bookmarks).to include "Google"
        end 
    end 

    describe '#add' do
        it 'creates a new bookmark' do
            Bookmark.add(url: 'http://www.gmail.com', title: 'Gmail')
            expect(Bookmark.all).to include 'Gmail'
        end
    end
end 
require 'bookmark'

describe "Bookmark" do 
    # let(:bookmark_one) {described_class.new(:bookmark_one)}
    # let(:bookmark_two) {described_class.new(:bookmark_two)}    

    describe "#all" do
        it "returns a list of bookmarks" do 
            bookmarks = Bookmark.all 
            expect(bookmarks).to include "http://www.makersacademy.com/"
            expect(bookmarks).to include "http://www.destroyallsoftware.com/"
            expect(bookmarks).to include "http://www.google.com/"
        end 
    end 
end 
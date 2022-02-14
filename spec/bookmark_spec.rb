describe "Bookmark" do 
    let(:bookmark_one) {described_class.new(:bookmark_one)}
    let(:bookmark_two) {described_class.new(:bookmark_two)}
    it "returns all instances when .all is called" do 
        expect(Bookmark.all).to eq [:bookmark_one, :bookmark_two]
    end     
end 
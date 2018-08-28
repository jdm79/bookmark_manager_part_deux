require './lib/bookmark'

describe Bookmark do

  subject(:subject) { described_class.new }

  describe ".all" do
    it "will return bookmarks" do
      expect(Bookmark.all).to eq(["http://www.bbc.com", "http://www.google.com", "http://www.makers.tech"])
    end
  end

end

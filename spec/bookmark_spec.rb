require './lib/bookmark'

describe Bookmark do

  subject(:subject) { described_class.new }

  describe ".all" do
    it "will return bookmarks" do
      expect(Bookmark.all).to eq(["www.facebook.com", "www.google.com", "www.instagram.com", "www.imgur.com", "www.reddit.com"])
    end
  end

end

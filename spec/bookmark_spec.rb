require './lib/bookmark'

describe Bookmark do

  subject(:subject) { described_class.new }

  describe ".all" do
    it "will return bookmarks" do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.facebook.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('www.instagram.com');")

      bookmarks = Bookmark.all

      expect(bookmarks).to include("www.facebook.com")
      expect(bookmarks).to include("www.google.com")
      expect(bookmarks).to include("www.instagram.com")
    end
  end

end

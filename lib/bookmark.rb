require 'pg'

class Bookmark

  def self.all
    if ENV['ENVIROMENT'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    result = connection.exec("SELECT * FROM bookmarks;")
    result.map { |bookmark| bookmark['url'] }
  end

  def self.add(bookmark)
    connection = PG.connect(dbname: 'bookmark_manager')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{bookmark}');")
  end

end



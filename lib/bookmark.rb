require "pg"

class Bookmark

   def self.all
      if ENV['ENVIRONMENT'] == 'test'
         connection = PG.connect(dbname: 'bookmark_manager_test')
      else 
         connection = PG.connect(dbname: 'bookmark_manager')
      end 
         result = connection.exec("SELECT * FROM bookmarks;")
         result.map { |bookmark| bookmark['url'] }
         result.map { |bookmark| bookmark['title'] }
   end

   def self.add(url:, title:)
      if ENV['ENVIRONMENT'] == 'test'
         connection = PG.connect(dbname: 'bookmark_manager_test')
      else 
         connection = PG.connect(dbname: 'bookmark_manager')
      end
<<<<<<< HEAD
         connection.exec("INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}') RETURNING url, title")
=======
connection.exec("INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}') RETURNING url, title")
>>>>>>> 43abe28487b8394840721cb6668d16957eb7cb73
   end

end


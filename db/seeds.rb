Slide.destroy_all

# If you use another database, find a way for yourself to reset the id sequence
# It will allow you to keep the slides' IDs, which allows to refresh the page and keep the same slide after re-seed
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'slides'")

Dir[File.expand_path "db/seeds/*.rb"].each { |f| require_relative(f) }

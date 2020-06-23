class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    all_artist = Artist.all.map {|a| a.name}
    if all_artist.include? "Drake"
      return true
    elsif
      drake =  Artist.create(name: "Drake")
      self.artist = drake
    end
  end
end
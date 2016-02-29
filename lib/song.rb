require 'pry'

class Song
  
  attr_accessor :title, :artist

  def initialize
    @title 
    @artist 
  end

  def slugify
    single = @title.gsub(" ", "_").downcase
    song = Tempfile.new([single, ".txt"], "tmp")
    song.write("#{@artist.name} - #{@title}")
    song.close
  end
end

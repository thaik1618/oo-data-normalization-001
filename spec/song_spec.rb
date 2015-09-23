require_relative "./spec_helper.rb"
require 'pry'
describe Song do
  it "has a title" do
    song = Song.new
    song.title = "Night Moves"
    expect(song.title).to eq("Night Moves")
  end

  it "has an artist" do
    song = Song.new
    song.title = "Night Moves"
    song.artist = Artist.new("Bob Seger")
    expect(song.artist.name).to eq("Bob Seger")
  end

  describe "#slugify" do 
    it "can save a representation of the song instance to a file" do
      song = Song.new
      song.title = "Night Moves"
      song.artist = Artist.new("Bob Seger")
      song.slugify
      temp_file = Dir["./tmp/*.txt"][0]
      expect(File.read(temp_file)).to match /Bob Seger - Night Moves/
      expect(File.basename(temp_file)).to match /night_moves/
    end
  end

end
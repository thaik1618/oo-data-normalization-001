class Song
  attr_accessor :title, :artist

  def serialize
    new_title = self.title.gsub(" ", "_")
    open("#{new_title}.txt", 'w') do |f|
      f.puts "#{self.artist.name} - #{self.title}"
    end 
  end
end
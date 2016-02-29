class Artist
  attr_accessor :song
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
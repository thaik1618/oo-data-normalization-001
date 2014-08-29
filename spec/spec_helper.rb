require_relative "../lib/artist.rb"
require_relative "../lib/song.rb"
require 'fileutils'

RSpec.configure do |config|
  config.after(:all) do
    FileUtils.rm_rf(Dir["./tmp/*"]) # remove temp files
  end
end
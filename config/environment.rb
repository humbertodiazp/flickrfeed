# Load the Rails application.
require_relative "application"
require "flickr"

# Initialize the Rails application.
Rails.application.initialize!

flickr = FlickRaw::Flickr.new

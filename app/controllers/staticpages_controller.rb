class StaticpagesController < ApplicationController

  def index
    flickr = Flickr.new(ENV['FLICKR_API_KEY'], ENV['FLICKR_SHARED_SECRET'])
    user_id = params[:flickr_id]
    begin
        @photo_urls = flickr.people.getPublicPhotos(user_id: user_id)
    rescue Flickr::FailedResponse => e
    end
  end
end

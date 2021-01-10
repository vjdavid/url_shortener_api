class UrlShortenerController < ApplicationController
  def short_url
    url = ShortenedUrl.new params[:url]
  end
end

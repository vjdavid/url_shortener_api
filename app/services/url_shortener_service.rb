class UrlShortenerService
  attr_reader :real_url

  def perform(real_url)
    ShortenedUrl.create(real_url)
  end
end

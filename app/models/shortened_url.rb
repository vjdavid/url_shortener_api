class ShortenedUrl < ApplicationRecord
  before_validation(on: :create) do
    self.real_url = url
    self.path_url = get_url_path(url)
    self.shorted_url = get_url_path(url) + SecureRandom.hex(4)
  end

  def get_url_path(real_url)
    URI.join(real_url, "/").to_s
  end
end

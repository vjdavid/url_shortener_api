class ShortenedUrl < ApplicationRecord

  validates :real_url, presence: true
  after_validation :find_or_save, on: :create
  before_save :save_title_page

  private

  def find_or_save
    self.path_url = SecureRandom.hex(2)
    self.shorted_url = 'http://sample.local/' + path_url
  end

  def save_title_page
    
  end
end

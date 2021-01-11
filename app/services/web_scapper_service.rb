class WebScapperService

  def perform(*params)
    parse_title_tag(params[:url])
  end

  private

  def stored_url
    stored_url ||= ShortenedUrl.find_by(path_url: params[:path_url])
  end

  def save_title_page
    stored_url.title = parse_title_tag(stored_url.real_url)
    stored_url.save
  end

  def parse_html_body(url)
    HTTParty.get(url).body
  end

  def parse_title_tag(url)
    Nokogiri::HTML::Document.parse(parse_html_body(url)).title
  end
end

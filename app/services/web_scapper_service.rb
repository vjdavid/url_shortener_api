class WebScapperService

  def perform(url)
    parse_title_tag(url)
  end

  private

  def parse_html_body(url)
    HTTParty.get(url).body
  end

  def parse_title_tag(url)
    Nokogiri::HTML::Document.parse(parse_html_body(url)).title
  end
end

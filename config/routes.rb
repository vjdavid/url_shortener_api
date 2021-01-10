Rails.application.routes.draw do
  post 'short_url', to: 'short_url#url_shortener'
end

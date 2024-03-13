require "url_reader"

class UrlsController < ApplicationController
  def read
    @content = UrlReader.new(params[:url]).extract_main_content
    @host = get_protocol_and_host_from_url(params[:url])
  end

  private
  
  def get_protocol_and_host_from_url(url)
    return "" unless url && url =~ URI::regexp
    
    uri = URI.parse(url)
    "#{uri.scheme}://#{uri.host}"
  end
end

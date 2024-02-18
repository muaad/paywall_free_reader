require "url_reader"

class UrlsController < ApplicationController
  def read
    @content = UrlReader.new(params[:url]).extract_main_content
  end
end

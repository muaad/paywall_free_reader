require "url_reader"

class UrlsController < ApplicationController
  def read
    @paragraphs = UrlReader.new(params[:url]).get_page_text
  end
end

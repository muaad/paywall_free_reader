require "mechanize"
require 'ruby-readability'

class UrlReader
	def initialize url
		@url = url
		@agent = Mechanize.new
	end

	def extract_main_content
		return "<div class='alert alert-danger' role='alert'>Invalid URL</div>" unless @url && @url =~ URI::regexp
		
		page = @agent.get(@url)
	  
		content = Readability::Document.new(
			page.body,
			tags: %w[div p img video iframe a h1 h2 h3 h4 h5 h6 figure ul ol li code pre blockquote], 
			attributes: %w[src href], 
			remove_empty_nodes: false
		).content

		"<h2>#{page.title}</h2><hr><br>#{content}"
	end
end
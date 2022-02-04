require "mechanize"
class UrlReader
	def initialize url
		@url = url
		@agent = Mechanize.new
	end

	def get_page_text
		begin
			page = @agent.get(@url)
			paragraphs = page.search('p').collect { |p| p.text }
		rescue StandardError => e
			puts e
			paragraphs = []
		end
		paragraphs
	end
end
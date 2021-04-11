#!/usr/bin/env ruby

require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'httparty'

def get_page(product, attribute)
		url = "https://www.google.com/search?q=#{product}+#{attribute}"
		page = HTTParty.get(url)
		@doc = Nokogiri::HTML(page)
		results = @doc.at_css('#result-stats').text
		puts "#{product} #{attribute}: #{results}"
end	

products = ['panadol', 'nurofen']
attributes = ['safety', 'efficacy']

products.each do |product|
	attributes.each do |attribute| 
		get_page(product, attribute)
	end
end

#README: run file using `ruby web_scraper_script.rb`

#
# write code here to fetch each combination of a product and an attribute from Google
# and record the number of results. E.g.
# * First we take 'panadol' and 'safety'
# * We search Google with the term 'panadol safety'
# * We get the number of results from the page (XX from where it says 'About XX results (YY seconds)')
# * Repeat for each combination
#


# output to STDOUT should look something like:
#   panadol safety: 1000
#   panadol efficacy: 2000
#   nurofen safety: 7000
#   nurofen efficacy: 8000

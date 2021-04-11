#!/usr/bin/env ruby

require 'rubygems'
require 'nokogiri'

#README: run file using `ruby web_scraper_script.rb`

products = ['panadol', 'nurofen']
attributes = ['safety', 'efficacy']

#
# write code here to fetch each combination of a product and an attribute from Google
# and record the number of results. E.g.
# * First we take 'panadol' and 'safety'
# * We search Google with the term 'panadol safety'
# * We get the number of results from the page (XX from where it says 'About XX results (YY seconds)')
# * Repeat for each combination
#

products.each do |product|
	puts product
end



# output to STDOUT should look something like:
#   panadol safety: 1000
#   panadol efficacy: 2000
#   nurofen safety: 7000
#   nurofen efficacy: 8000

#!/usr/bin/env ruby
require 'net/http'
require 'json'

url = URI.parse("https://poloniex.com/public?command=returnTicker")
res = Net::HTTP.get(url)
dat = JSON.parse(res)

last = dat['BTC_DGB']['last']

puts "#{last}"



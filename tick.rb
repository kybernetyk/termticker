#!/usr/bin/env ruby
require 'net/http'
require 'json'

url = URI.parse("https://poloniex.com/public?command=returnTicker")
res = Net::HTTP.get(url)
dat = JSON.parse(res)

dgb = dat['BTC_DGB']['last']
sc = dat['BTC_SC']['last']
bcy = dat['BTC_BCY']['last']

puts "dgb: #{dgb}"
puts " sc: #{sc}"
puts "bcy: #{bcy}"


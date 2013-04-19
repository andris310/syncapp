require 'rubygems'
require 'etsy'
require 'pry'

Etsy.api_key = ETSY_API_KEY
Etsy.api_secret = ETSY_SECRET

request = Etsy.request_token
binding.pry
#suEhttps://www.etsy.com/oauth/signin?oauth_consumer_key=uv8v8onkarri8yh39nvfm33i&oauth_token=17a1f98a0f589e81b9937991aa95e8&service=v2_sandbox

#access = Etsy.access_token(request.token, request.secret, '114645ab')


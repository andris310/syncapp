require 'rubygems'
require 'amazon_seller_central'
require 'pry'

AmazonSellerCentral.configure do |config|
  config.login_email    AMAZON_ID
  config.login_password AMAZON_PSW
end

AmazonSellerCentral::Inventory.each_page do |page|
  listings = page.listings
  listing = listings.first
 
  listing.sku          # <Your sku for this listing>
  listing.asin         # An ASIN, e.g. B003962DXE
  listing.product_name # The name of the product
  listing.created_at   # a Time object representing when you created this listing
  listing.quantity     # an integer
  listing.condition    # "New" or "Used - Very Good" or whichever
  listing.price_cents  # an integer of cents. listing.price is also available to get dollars
  listing.status       # "Open", "Closed (Out of Stock)", or "Incomplete"
end
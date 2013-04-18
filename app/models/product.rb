class Product < ActiveRecord::Base
  attr_accessible :cost, :in_stock, :product_name, :retail_price, :sku, :sold, :picture
  mount_uploader :picture, PictureUploader


end

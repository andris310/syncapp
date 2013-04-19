require 'volusion'
require 'pry'

class Product < ActiveRecord::Base
  attr_accessible :cost, :in_stock, :product_name, :retail_price, :sku, :sold, :picture
  mount_uploader :picture, PictureUploader

  def import_volusion
  	api = Volusion::Api.new({
    :store_url => "http://www.bloominghomedecor.com",
    :username  => VOLUSION_USER,
    :encrypted_password   => VOLUSION_PASSWORD
		})

		@product = api.get_products()["Products"].each do |product|
			product["ProductName"]
			product["ProductCode"]
			product["ProductPrice"]
			product["StockStatus"]
		end
  end
end

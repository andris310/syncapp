require 'volusion'
require 'pry'


api = Volusion::Api.new({
    :store_url => "http://www.bloominghomedecor.com",
    :username  => VOLUSOIN_USER,
    :encrypted_password   => VOLUSION_PASSWORD
})

api.get_products()["Products"].each do |product|
	puts product["ProductName"]
	puts product["ProductCode"]
	puts product["ProductPrice"]
	puts product["StockStatus"]
	puts "--"
end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



api = Volusion::Api.new({
	:store_url => "http://www.bloominghomedecor.com",
	:username  => "blooming310@gmail.com",
	:encrypted_password   => "30AC1BCBA36A49F41FED23E6D0176314FB4302DFD0BDD2690662F99EC94B03E3"
})

@product = api.get_products["Products"].each do |product|
	p = Product.new
	p.product_name = product["ProductName"]
	p.sku = product["ProductCode"]
	p.retail_price = product["ProductPrice"]
	p.in_stock = product["StockStatus"]
	p.save
end
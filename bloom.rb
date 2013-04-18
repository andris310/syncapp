require 'nokogiri'
require 'open-uri'
require 'uri'

url = "http://www.bloominghomedecor.com/net/WebService.aspx?Login=blooming310@gmail.com&EncryptedPassword=30AC1BCBA36A49F41FED23E6D0176314FB4302DFD0BDD2690662F99EC94B03E3&EDI_Name=Generic\Products&SELECT_Columns=p.ProductName,p.StockStatus,pe.ListPrice,pe.PhotoURL_Small"
@doc = Nokogiri::XML(open(url))

puts @doc
require 'httparty'
require 'rspec'
require 'json'

URL = "https://sandbox.moip.com.br"
CUSTOMERS_ENDPOINT = "/v2/customers"
TOKEN = "Basic UjZBRjFFS0ZJWEFUUFNWV1hKWVVTTU1XWE1ST0NXOFM6Rk9QQkNUVEExUTVOWDlaVFJZUlE0SjNBSE9GWUlLTFMwNjY4UTRYWQ=="

RSpec.describe 'Teste wirecard' do

  customers_response =  HTTParty.get(URL + CUSTOMERS_ENDPOINT,
    :headers => {
      'Content-Type': 'application/json',
      'Authorization': TOKEN
    }
  )

  it 'Deve retornar 200' do
    expect(customers_response.code).to eql (200) 
  end

  it '' do
    cliente = JSON.parse(customers_response.to_s)
    cliente_id = cliente["customer"]["id"]
    expect(cliente_id).to eql (200) 
  end
end
=begin
response = HTTParty.post('https://my-fake-endpoint.herokuapp.com/message', 
  :headers => {
    'cache-control': 'no-cache','content-type': 'application/json'
  }, 
  :body => {
    "mfkep":"some text"
  }.to_json
)
=end

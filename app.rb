require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/address')
require('./lib/phone')

get('/') do
  erb(:index)
end

get('/address') do
  @address = Address.all()
  erb(:contacts)
end

get('/address/new') do
  erb(:address_form)
end

get('/address_form') do
  @address = Address.all()
   erb(:address_form)
end

post('/address_form') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  birth_month = params.fetch('birth_month')
  @address = Address.new({:first_name => first_name, :last_name => last_name, :birth_month => birth_month})
  @address.save()
  erb(:success)
end

get('/phone/:id') do
  @phone = Phone.find(params.fetch('id'))
  erb(:contact)
end

get('/address/:id') do
  @address = Address.find(params.fetch('id').to_i())
  erb(:address)
end

get('/address/:id/phone/new') do
  @address = Address.find(params.fetch('id').to_i())
  erb(:phone_form)
end

post('/phone') do
  area_code = params.fetch('area_code')
  number = params.fetch('number')
  label = params.fetch('label')
  @phone = Phone.new(area_code, number, label)
  @phone.save()
  @address = Address.find(params.fetch('address_id').to_i())
  @address.add_phone(@phone)
  erb(:success)
end

require('rspec')
require('address')

describe("#first_name") do
  it("returns the first name on an entry") do
    test_address = Address.new("Bob")
    expect(test_address.first_name()).to(eq("Bob"))
  end
end

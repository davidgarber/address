require('rspec')
require('address')

  describe("#first_name") do
    it("returns the first name on an entry") do
      test_address = Address.new("Bob")
      expect(test_address.first_name()).to(eq("Bob"))
    end
  end

  describe("#last_name") do
    it("returns the last name on an entry") dp
      test_address = Address.new("Smith")
      expect(test_address.last_name()).to(eq("Smith"))
    end
  end

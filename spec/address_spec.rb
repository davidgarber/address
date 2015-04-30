require('rspec')
require('address')

  describe("#first_name") do
    it("returns the first name on an entry") do
      test_address = Address.new("Bob", "Smith", "July")
      expect(test_address.first_name()).to(eq("Bob"))
    end
  end

  describe("#last_name") do
    it("returns the last name on an entry") do
      test_address = Address.new("Bob", "Smith", "July")
      expect(test_address.last_name()).to(eq("Smith"))
    end
  end

  describe("#birth_month") do
    it("returns the birth month on an entry") do
      test_address = Address.new("Bob", "Smith", "July")
      expect(test_address.birth_month()).to(eq("July"))
    end
  end

require('rspec')
require('address')

  describe(Address) do
    before() do
      Address.clear()
    end

  describe("#first_name") do
    it("returns the first name on an entry") do
      test_address = Address.new({:first_name => "Bob", :last_name => "Smith", :birth_month => "July"})
      expect(test_address.first_name()).to(eq("Bob"))
    end
  end

  describe("#last_name") do
    it("returns the last name on an entry") do
      test_address = Address.new({:first_name => "Bob", :last_name => "Smith", :birth_month => "July"})
      expect(test_address.last_name()).to(eq("Smith"))
    end
  end

  describe("#birth_month") do
    it("returns the birth month on an entry") do
      test_address = Address.new({:first_name => "Bob", :last_name => "Smith", :birth_month => "July"})
      expect(test_address.birth_month()).to(eq("July"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Address.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves the entry") do
      test_address = Address.new({:first_name => "Bob", :last_name => "Smith", :birth_month => "July"})
      test_address.save()
      expect(Address.all()).to(eq([test_address]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved addresses") do
      Address.new({:first_name => "Bob", :last_name => "Smith", :birth_month => "July"}).save()
      Address.clear()
      expect(Address.all()).to(eq([]))
    end
  end
end

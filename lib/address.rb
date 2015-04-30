class Address

  @@all_address = []

  define_method(:initialize) do |first_name, last_name, birth_month|
    @first_name = first_name
    @last_name = last_name
    @birth_month = birth_month
  end

  define_method(:first_name) do
    @first_name
  end

  define_method(:last_name) do
    @last_name
  end

  define_method(:birth_month) do
    @birth_month
  end

  define_singleton_method(:all) do
    @@all_address
  end

  define_method(:save) do
    @@all_address.push(self)
  end

  define_singleton_method(:clear) do
    @@all_address = []
  end
end

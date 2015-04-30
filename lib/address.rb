class Address

  define_method(:initialize) do |first_name, last_name|
    @first_name = first_name
    @last_name = last_name
  end

  define_method(:first_name) do
    @first_name
  end

  define_method(:last_name) do
    @last_name
  end
end

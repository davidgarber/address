class Address

  define_method(:initialize) do |first_name|
    @first_name = first_name
  end

  define_method(:first_name) do
    @first_name
  end
end

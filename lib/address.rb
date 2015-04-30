class Address

  attr_reader(:first_name, :last_name, :birth_month)

  @@all_address = []

  define_method(:initialize) do |attributes|
    @first_name = attributes.fetch(:first_name)
    @last_name = attributes.fetch(:last_name)
    @birth_month = attributes.fetch(:birth_month)
  end

  # define_method(:first_name) do
  #   @first_name
  # end
  #
  # define_method(:last_name) do
  #   @last_name
  # end
  #
  # define_method(:birth_month) do
  #   @birth_month
  # end

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

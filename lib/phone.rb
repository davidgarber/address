class Phone
  attr_reader(:area_code, :number, :label, :id)

  @@all_phone = []

  define_method(:initialize) do |attributes|
    @area_code = attributes.fetch(:area_code)
    @number = attributes.fetch(:number)
    @label = attributes.fetch(:label)
    @id = @@all_phone.length().+(1)
    end

  define_singleton_method(:all) do
    @@all_phone
  end

  define_method(:save) do
    @@all_phone.push(self)
  end

  define_singleton_method(:clear) do
    @@all_phone =[]
  end

  define_singleton_method(:find) do |identification|
    found_phone = nil
    @@all_phone.each do |phone|
      if phone.id().eql?(identification.to_i())
        found_phone = phone
    end
  end
    found_phone
  end

end

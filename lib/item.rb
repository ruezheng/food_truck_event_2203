class Item
  attr_reader :name,
              :price
              :quantity

  def initialize(attributes)
    @name = attributes[:name]
    @price = attributes[:price].delete("'$'").to_f
    @quantity = 0
  end


end

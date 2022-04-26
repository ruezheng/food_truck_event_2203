class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(attributes)
    @name = attributes[:name]
    @inventory = attributes[:inventory]
  end

  def check_stock(item)
    
  end
end

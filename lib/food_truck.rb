class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def stock(item, amount)
    @inventory[item] = amount
  end

  def check_stock(item)
    if @inventory == {}
      0
    else
      @inventory.each do |item, amount|
        return amount
      end
    end
  end
end

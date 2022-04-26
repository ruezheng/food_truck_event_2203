class FoodTruck
  attr_reader :name,
              :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def stock(item, quantity)
    if @inventory[item].nil?
      @inventory[item] = quantity
    else
      @inventory[item] += quantity
    end
  end

  def check_stock(item)
    if @inventory == {}
      0
    else
      @inventory.each do |item, quantity|
        return quantity
      end
    end
  end

  def potential_revenue
    # sum of all their items' price * quantity
    revenue = 0
    @inventory.each do |item, quantity|
      revenue += (item.price * quantity)
    end
    revenue
  end
end

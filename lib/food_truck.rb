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
    @inventory.each do |item|
      require "pry"; binding.pry
      return item.quantity
    end
  end
  # def check_stock(item)
  #   item_count = 0
  #   @inventory.each do |item, amount|
  #     if item == item
  #       item_count += amount
  #     end
  #   end
  # end

  def potential_revenue

  end
end

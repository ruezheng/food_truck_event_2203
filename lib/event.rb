class Event
  attr_reader :name,
              :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    trucks_with_item = []
    @food_trucks.each do |truck|
      trucks_with_item << truck if truck.inventory.include?(item)
    end
    trucks_with_item
  end

  def sorted_item_list # not finished
  #   # returns a list of all items the FoodTrucks have in stock, sorted alphabetically (by name). This list should not include any duplicate items.
    items_arr = []
    @food_trucks.each do |truck|
      truck.inventory
    end
  end

  def total_inventory # not finished
    inventory_hash = {}
    @food_trucks.each do |truck|
      truck.inventory.each do |item, amount|
        if inventory_hash[item].nil?
          inventory_hash[item] = {
            quantity: amount,
            food_trucks: [truck]
          }
        else
          inventory_hash[item][:food_trucks] << food_truck
        end
      end
    end
    inventory_hash
  end
end

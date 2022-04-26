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

  def sorted_item_list
    # returns a list of all items the FoodTrucks have in stock, sorted alphabetically (by name). This list should not include any duplicate items.
    items_arr = []
    @food_trucks.each do |truck|
        require "pry"; binding.pry
      truck.inventory
    end
  end

end

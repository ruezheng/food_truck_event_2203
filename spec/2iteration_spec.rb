require './lib/item'
require './lib/food_truck'
require './lib/event'

describe "Iteration 2" do
  let(:event) { Event.new("South Pearl Street Farmers Market") }
  let(:item1) { Item.new({name: 'Peach Pie (Slice)', price: "$3.75"}) }
  let(:item2) { Item.new({name: 'Apple Pie (Slice)', price: '$2.50'}) }
  let(:item3) { Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"}) }
  let(:item4) { Item.new({name: "Banana Nice Cream", price: "$4.25"}) }
  let(:food_truck1) { FoodTruck.new("Rocky Mountain Pies") }
  let(:food_truck2) { FoodTruck.new("Ba-Nom-a-Nom") }
  let(:food_truck3) { FoodTruck.new("Palisade Peach Shack") }

  describe Event do
    it "exists and has attributes" do
      expect(event).to be_a Event
      expect(event.name).to eq("South Pearl Street Farmers Market")
      expect(event.food_trucks).to eq []
    end

    it "can add food trucks" do
      food_truck1.stock(item1, 35)
      food_truck1.stock(item2, 7)
      food_truck2.stock(item4, 50)
      food_truck2.stock(item3, 25)
      food_truck3.stock(item1, 65)
      event.add_food_truck(food_truck1)
      event.add_food_truck(food_truck2)
      event.add_food_truck(food_truck3)

      expect(event.food_trucks).to eq [food_truck1, food_truck2, food_truck3]
    end

    it "can list names of food trucks" do
      food_truck1.stock(item1, 35)
      food_truck1.stock(item2, 7)
      food_truck2.stock(item4, 50)
      food_truck2.stock(item3, 25)
      food_truck3.stock(item1, 65)
      event.add_food_truck(food_truck1)
      event.add_food_truck(food_truck2)
      event.add_food_truck(food_truck3)

      expect(event.food_truck_names).to eq ["Rocky Mountain Pies", "Ba-Nom-a-Nom", "Palisade Peach Shack"]
    end

    it "can list food trucks that sell a specific item" do
      food_truck1.stock(item1, 35)
      food_truck1.stock(item2, 7)
      food_truck2.stock(item4, 50)
      food_truck2.stock(item3, 25)
      food_truck3.stock(item1, 65)
      event.add_food_truck(food_truck1)
      event.add_food_truck(food_truck2)
      event.add_food_truck(food_truck3)

      expect(event.food_trucks_that_sell(item1)).to eq [food_truck1, food_truck3]
      expect(event.food_trucks_that_sell(item4)).to eq [food_truck2]
    end

    it "can calculate potential revenue of a food truck" do
      food_truck1.stock(item1, 35)
      food_truck1.stock(item2, 7)
      food_truck2.stock(item4, 50)
      food_truck2.stock(item3, 25)
      food_truck3.stock(item1, 65)
      event.add_food_truck(food_truck1)
      event.add_food_truck(food_truck2)
      event.add_food_truck(food_truck3)

      expect(food_truck1.potential_revenue).to eq(148.75)
      expect(food_truck2.potential_revenue).to eq(345.00)
      expect(food_truck3.potential_revenue).to eq(243.75)
    end
  end
end

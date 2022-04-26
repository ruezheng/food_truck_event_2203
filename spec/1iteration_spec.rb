require './lib/item'
require './lib/food_truck'

describe "Iteration 1" do
  let(:item1) { Item.new({name: 'Peach Pie (Slice)', price: "$3.75"}) }
  let(:item2) { Item.new({name: 'Apple Pie (Slice)', price: '$2.50'}) }
  let(:food_truck) { FoodTruck.new("Rocky Mountain Pies") }


  describe Item do
    it "exists and has attributes" do
      expect(item1).to be_a Item
      expect(item2).to be_a Item
      expect(item2.name).to eq("Apple Pie (Slice)")
      expect(item2.price).to eq(2.50)
    end
  end

  describe FoodTruck do
    it "exists and has attributes" do
      expect(food_truck).to be_a FoodTruck
      expect(food_truck.name).to eq("Rocky Mountain Pies")
      expect(food_truck.inventory).to eq({})
    end

    it "starts with no stock" do
      expect(food_truck.check_stock(item1)).to eq(0)
    end

    it "can stock items and list inventory" do
      food_truck.stock(item1, 30)

      expect(food_truck.inventory).to eq({ item1 => 30 })
      expect(food_truck.check_stock(item1)).to eq(30)
    end

    it "can change stock" do
      food_truck.stock(item1, 30)
      food_truck.stock(item1, 25)

      expect(food_truck.check_stock(item1)).to eq(25)
    end

    xit "can change inventory" do
      food_truck.stock(item1, 30)
      food_truck.stock(item1, 25)
      food_truck.stock(item2, 12)

      expect(food_truck.inventory).to eq ({ item1 => 30 })
    end
  end
end

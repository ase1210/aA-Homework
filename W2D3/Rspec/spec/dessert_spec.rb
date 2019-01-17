require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  let(:chef) { double("chef", name: "Steve") }
  subject(:dessert) { Dessert.new("brownie", 10, chef)}

  describe "#initialize" do
    it "sets a type" do
      expect(dessert.type).to eq("brownie")
    end

    it "sets a quantity" do 
      expect(dessert.quantity).to eq(10)
    end

    it "starts ingredients as an empty array" do 
      expect(dessert.ingredients).to be_empty
    end
    context "throws and error when given a string quantity" do
      subject(:dessert) { Dessert.new("brownie", "10", "steve")}

      it "raises an argument error when given a non-integer quantity" do
      expect { dessert }.to raise_error(ArgumentError)
      end
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      dessert.add_ingredient("batter")
      expect(dessert.ingredients.length).to be(1)
    end
  end

  describe "#mix!" do
  let(:ingredients) { ["batter", "sugar", "chocolate chips"]}
    it "shuffles the ingredient array" do
      dessert.add_ingredient("batter")
      dessert.add_ingredient("sugar")
      dessert.add_ingredient("chocolate chips")
      expect(dessert.mix!).to_not eq(ingredients)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      dessert.eat(2)
      expect(dessert.quantity).to eq(8)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { dessert.eat(12) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do    
      allow(chef).to receive(:titleize).and_return("Steve")
      expect(dessert.serve).to include("Steve")
    end

  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(dessert)
      dessert.make_more
    end
  end 
end

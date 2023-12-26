require "./lib/stock.rb"

RSpec.describe Stock do
  let!(:instance) { Stock.new }

  describe "instacnce methods" do
    context "#max_profit" do
      it "returns an integer for the maximum profit that can be made from a series of stock prices" do
        prices = [7,1,5,3,6,4]
        result = 5

        expect(instance.max_profit(prices)).to eq(result)
      end

      it "returns a value of zero if a profit can't be made" do
        prices = [7,6,4,3,1]
        result = 0

        expect(instance.max_profit(prices)).to eq(result)
      end

      it "returns a value of zero if a profit can't be made" do
        prices = [2,4,1]
        result = 2

        expect(instance.max_profit(prices)).to eq(result)
      end

      it "returns a value of zero for an empty array" do
        prices = []
        result = 0

        expect(instance.max_profit(prices)).to eq(result)
      end
    end
  end
end

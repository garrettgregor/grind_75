require "./lib/two_sum.rb"

RSpec.describe TwoSum do
  let(:two_sum) { TwoSum.new }

  describe "instance methods" do
    context "#two_sum" do
      it "returns the indices of the two numbers that add up to the target" do
        expect(two_sum.two_sum([2, 7, 11, 15], 9)).to eq([0, 1])
        expect(two_sum.two_sum([3, 2, 4], 6)).to eq([1, 2])
        expect(two_sum.two_sum([3, 3], 6)).to eq([0, 1])
      end
    end
  end
end

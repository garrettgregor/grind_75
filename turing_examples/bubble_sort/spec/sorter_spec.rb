require "./lib/sorter"

RSpec.describe Sorter do
  let!(:instance) { Sorter.new }

  describe "#bubble_sort" do
    it "sorts per spec" do
      sequence = [4, 3, 5, 0, 1]
      swaps = 0

      result = [0, 1, 3, 4, 5]

      expect(instance.bubble_sort(sequence)).to eq(result)
      # string = "Final result: [0, 1, 3, 4, 5]\n Swaps: 7\n"
      # expect {instance.bubble_sort(sequence) }.to output(string).to_stdout
    end
  end
end

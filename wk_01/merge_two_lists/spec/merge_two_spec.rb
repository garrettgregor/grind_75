require "./lib/merge_two.rb"

RSpec.describe MergeTwo do
  let!(:instance) { MergeTwo.new }

  describe "instance methods" do
    context "merge_two_lists" do
      it "takes two lists and combines them into a sorted list" do
        list_1 = [1,2,4]
        list_2 = [1,3,4]
        result = [1,1,2,3,4,4]

        expect(instance.merge_two_lists(list_1, list_2)).to eq(result)
      end

      it "takes two empty lists and combines them into an empty list" do
        list_1 = []
        list_2 = []
        result = []

        expect(instance.merge_two_lists(list_1, list_2)).to eq(result)
      end

      it "takes an empty list and a populated list and combines them into a sorted empty list" do
        list_1 = []
        list_2 = [0]
        result = [0]

        expect(instance.merge_two_lists(list_1, list_2)).to eq(result)
      end
    end
  end
end

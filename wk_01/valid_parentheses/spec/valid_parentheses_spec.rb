require "./lib/valid_parentheses.rb"

RSpec.describe ValidParentheses do
  let!(:instance) { ValidParentheses.new }

  describe "instance methods" do
    context "is_valid?" do
      it "returns a boolean value based on whether the string is valid" do
        expect(instance.is_valid?("()")).to be(true)
        expect(instance.is_valid?("()[]{}")).to be(true)
        expect(instance.is_valid?("([{}[]])")).to be(true)
        expect(instance.is_valid?("(]")).to be(false)
        expect(instance.is_valid?("()]")).to be(false)
        expect(instance.is_valid?("[")).to be(false)
        expect(instance.is_valid?("((")).to be(false)
        expect(instance.is_valid?("(())")).to be(true)
        expect(instance.is_valid?("{[]}")).to be(true)
        expect(instance.is_valid?("{1[23]4}")).to be(true)
      end
    end
  end
end

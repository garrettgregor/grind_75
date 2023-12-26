require "./lib/palindrome.rb"

RSpec.describe Palindrome do
  let!(:instance) { Palindrome.new }

  describe "instance methods" do
    context "is_palindrome" do
      it "checks to see if a string is a palindrome" do
        string = "A man, a plan, a canal: Panama"

        expect(instance.is_palindrome(string)).to eq(true)
      end

      it "checks to see if a string is a palindrome" do
        string = "race a car"

        expect(instance.is_palindrome(string)).to eq(false)
      end

      it "checks to see if a string is a palindrome" do
        string = " "

        expect(instance.is_palindrome(string)).to eq(true)
      end

      it "checks to see if a string is a palindrome" do
        string = "ab_a"

        expect(instance.is_palindrome(string)).to eq(true)
      end
    end
  end
end

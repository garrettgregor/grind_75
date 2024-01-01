require "./lib/anagram"

RSpec.describe Anagram do
  let!(:instance) { Anagram.new }

  describe "instance methods" do
    context "#initialize" do
      it "exist" do
        expect(instance).to be_an(Anagram)
      end
    end

    context "#is_anagram?" do
      it "returns true if two strings are anagrams of one another" do
        s = "anagram"
        t = "nagaram"

        expect(instance.is_anagram?(s, t)).to eq(true)
      end

      it "returns false if two strings are not anagrams of one another" do
        s = "rat"
        t = "car"

        expect(instance.is_anagram?(s, t)).to eq(false)
      end
    end
  end
end

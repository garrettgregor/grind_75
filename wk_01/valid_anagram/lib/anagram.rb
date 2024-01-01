class Anagram
  def is_anagram?(s, t)
    permutations = []

    t.chars.permutation(t.length) do |permutation|
      permutations << permutation.join
    end

    permutations.include?(s)
  end
end

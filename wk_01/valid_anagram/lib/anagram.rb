class Anagram
  def is_anagram?(s, t)
    t.chars.permutation(t.length) do |permutation|
      return true if permutation.join == s
    end
  end
end

class Anagram
  def is_anagram?(s, t)
    # lowers time complexity enough; approx 283ms
    # t.chars.sort == s.chars.sort

    # # the difference between bytes and each byte is approx 90ms on LeetCode
    # t.bytes.tally == s.bytes.tally # approx 160ms

    # lowers time complexity most; approx 70ms
    t.each_byte.tally == s.each_byte.tally
  end
end

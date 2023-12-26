class Palindrome
  def is_palindrome(s)
    forward = s.gsub(/\W|[[:punct:]]|\s/, "").downcase

    forward == forward.reverse
  end
end

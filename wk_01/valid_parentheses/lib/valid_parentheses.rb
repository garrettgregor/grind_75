class ValidParentheses
  def is_valid?(s)
    return true if s.empty?

    stack = []
    s.chars.each do |c|
      case c
      when '(', '{', '['
          stack.push(c)
      when ')'
          return false if stack.pop() != '('
      when '}'
          return false if stack.pop() != '{'
      when ']'
          return false if stack.pop() != '['
      end
    end
    return stack.empty?

    # dictionary = {
    #   "(" => ")",
    #   "{" => "}",
    #   "[" => "]"
    # }
    #   balanced = /
    #   ^            # the regular expression is going to start with the instruction that is after that
    #     (          # start of the group 1
    #       \(\)     # means that we are expecting ()
    #     )*         # end of the group 1, 0 or more times
    #   $            # the regular expression is going to finish with the instruction that is before that
    #  /x            # this is used to be able to define a regex with spaces and line breaks


    # balanced = /^(\(\))*$/

    # s.match?(balanced)

    # if s.length < 2
    #   return false
    # else
    #   s.chars.each_with_index do |char, index|
    #     # check if the character exists in the dictionary
    #     if dictionary.has_key?(char)
    #       # check the next character matches the successive character
    #       return s[index + 1] == dictionary[char]
    #     else
    #       return false
    #     end
    #   end
    # end
  end
end

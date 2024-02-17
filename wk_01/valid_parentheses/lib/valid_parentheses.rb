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
  end
end

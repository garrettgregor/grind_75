class TwoSum
  def two_sum(nums, target)
    h = {}
    nums.each_with_index do |num, index|
      complement = target - num
      if h.has_key?(complement)
        return [h[complement], index]
      else
        h[num] = index
      end
    end
    []
  end
end

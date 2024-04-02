class Sorter
  def bubble_sort(pre_sequence)
    swaps = 0
    previous = 0
    current = 1

    while pre_sequence != pre_sequence.sort
      if pre_sequence[previous] > pre_sequence[current]
        a = pre_sequence[previous]
        b = pre_sequence[current]

        pre_sequence[previous] = b
        pre_sequence[current] = a
        swaps += 1

        previous = 0
        current = 1
      elsif pre_sequence[previous] < pre_sequence[current]
        previous += 1
        current += 1
      end
    end

    pre_sequence

    # to_stdout
    # puts "Final result: #{pre_sequence}\n Swaps: #{swaps}"
  end
end

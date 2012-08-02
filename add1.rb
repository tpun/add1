class Array
  def add1! val, n
    count = n == 0 ? length : n.abs
    iterator = n < 0 ? :reverse_each_with_index : :each_with_index
    send(iterator) do |value, index|
      break if count==0
      if value == val
        self[index] = value + 1
        count -= 1
      end
    end

    self
  end

  def add1 val, n
    clone.add1! val, n
  end

  def reverse_each_with_index &block
    count = length
    reverse_each do |value|
      block.call value, count-1
      count -= 1
    end
  end
end

def is_prime?(num)
  return true if num == 2
  (2..(Math.sqrt(num).ceil)).each do |i|
    return false if num % i == 0
  end
  return true
end

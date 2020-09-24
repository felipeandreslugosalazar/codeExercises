def countingValleys(path)
  p path = path.chars

  values = []
  path.each do |char|
    char == "U" ? values << 1 : values << -1
  end

  sum = 0
  array_sum = []
  values.each do |value|
    sum = sum + value
    array_sum << sum
  end

  valleys = 0
  array_sum.each_with_index do |element, index|
    if element == 0 && array_sum[index - 1] == -1
      valleys += 1
    end
  end
  puts "valleys: #{valleys}"
  valleys
end

path = "DDUUDDUU"
countingValleys(path)

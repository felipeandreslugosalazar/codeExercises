def countingValleys(path)
  path = path.chars
  # puts "path: #{path}"

  values = []
  path.each do |char|
    char == "U" ? values << 1 : values << -1
  end
  # puts "values: #{values}"

  sum = 0
  array_sum = []
  values.each_with_index do |value, index|
    # print "value: #{value},  index -> #{index}, sum: #{sum = sum + value} "
    sum = sum + value
    array_sum << sum
    # print "\n"
  end
  # puts "array_sum: #{array_sum}"

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

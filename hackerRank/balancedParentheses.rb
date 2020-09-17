def getMin(s)
  puts " - Initial string => '#{string = s}'"
  puts " - Initial string ordered => '#{stringOrdered = string.chars.sort.join}'"
  puts " - String2Array => #{strin2gArray = string.chars.sort}"

  left = 0
  right = 0

  s.chars.each do |char|
    char == "(" ? left += 1 : right += 1
  end
  puts " - Initial Amount of elements"
  puts "   ( = #{left}"
  puts "   ) = #{right}"

  diff = (left - right).abs
  puts " - Diff: #{diff}"

  balancedArray = []

  if left > right
    puts " - #{diff} of ')' needs to be added to balance the parentheses."
    diff.times do
      balancedArray = strin2gArray.push(")")
    end
  else
    puts " - #{diff} of '(' needs to be added to balance the parentheses."
    diff.times do
      balancedArray = strin2gArray.unshift("(")
    end
  end

  puts " - Array balanced => #{balancedArray}"
  puts " - String balanced => #{balancedArray.join}"

  p "================================================="
end

s = "(()"
getMin(s)
s = ")))"
getMin(s)

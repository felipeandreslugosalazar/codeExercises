# It contains no unmatched brackets.
# The subset of brackets enclosed within the confines of a matched pair of brackets is also a matched pair of brackets.

def isBalanced(s)
  puts ""
  puts "Initial Array: #{s}"
  puts ""
  
  #  sting to array 
  print
  s_array = s.chars
  #  elemen count

  # ele_count = []
  # s.chars.each do |var, i|
  #   p i
  #   p var
  #   # ele_count[i].include?( ) ? ele_count << var
  # end

  left = 0
  right = 0
  left_squared = 0
  right_squared = 0
  left_curly = 0
  right_curly = 0


  "s_array size: #{s_array.size} "
  "s_array 1/2 : #{s_array.size / 2} "

  bytes_array = []

  s_array.each do |char|
    case char
    when "("
      left += 1
      bytes_array << 40
    when ")"
      right += 1
      bytes_array << 41
    when "["
      left_squared += 1
      bytes_array << 91
    when "]"
      right_squared += 1
      bytes_array << 93
    when "{"
      left_curly += 1
      bytes_array << 123
    else
      right_curly += 1
      bytes_array << 125
    end
  end
  "( #{left}"
  ") #{right}"
  "[ #{left_squared}"
  "] #{right_squared}"
  "{ #{left_curly}"
  "} #{right_curly}"

  bytes_array

  diff = left - right
  diff_squared = left_squared - right_squared
  diff_curly = left_curly - right_curly

  #  the number of each of the elements is balanced
  condition1 = diff == 0 && diff_squared == 0 && diff_curly == 0
  condition1

  if condition1
    "the number of elements is balanced? || for each open there is a close ? : YES"
    "is the opening and closing balanced ?"
  else
    "the number of elements is NOT balanced "
  end

  puts "first half: #{s_arriba = s_array.slice(0, s_array.size / 2)}"
  puts "first half bytes : #{bytes_array1 = bytes_array.slice(0, s_array.size / 2)}"

  # how to check if the position is balanced ?

  puts "second half #{s_abajo = s_array.slice((s_array.size / 2), s_array.size).reverse}"
  puts "second half bytes : #{bytes_array2 = bytes_array.slice((bytes_array.size / 2), bytes_array.size).reverse}"

  bytes_array1
  bytes_array2

  pos_balanced = 0
  igual = [81, 184, 248]
  ((bytes_array.size) / 2).times do |i|
    pos_comparison = bytes_array1[i] + bytes_array2[i]

    if igual.include?(pos_comparison)
      pos_balanced = pos_balanced + 0
    else
      pos_balanced = pos_balanced + 1
    end
  end
  pos_balanced == 0 ? condition2 = true : condition2 = false

  if condition1 && condition2
    puts "YES"
  else
    puts "YES"
  end
end

s = "{{[(())]}}"
isBalanced(s)

# s = ["{[()]}", "{[(])}", "{{[[(())]]}}"]
# s.each do |string|
#   isBalanced(string)
# end

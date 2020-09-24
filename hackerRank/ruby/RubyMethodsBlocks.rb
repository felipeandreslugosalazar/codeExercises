def factorial
  yield
end

n = gets.to_i
factorial do
  array = (1..n).to_a.reverse

  array_ini = array.slice(0, 2)
  array_sec = array.slice(2, array.count)

  fac = array_ini[0] * array_ini[1]

  array_sec.each do |e|
    fac = fac * e
  end
  puts fac
end

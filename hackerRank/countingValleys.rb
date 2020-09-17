# path = "UDDDUDUU"
path = "DDUUDDUDUUUD"

path = path.downcase.chars

p path

values = []
path.each do |char|
  char == "u" ? values << 1 : values << -1
end
p values

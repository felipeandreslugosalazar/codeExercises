ar = %W(a a b c c d a b a a a)
br = %W(10 10 30 20 20 40 10 30 10)

def createHashFromArray(ar)
  hash = {}
  ar.each do |element|
    if hash.has_key?(element)
      hash[element] = hash[element] + 1
    else
      hash[element] = 1
    end
  end
  # ya tenemos las medias clasificadas por color y cantidad
  # divimos para encontrar pares
  pairs = 0
  hash.each_value do |element|
    pairs = pairs + element / 2
  end
  p hash
  p pairs
end

createHashFromArray(ar)
createHashFromArray(br)

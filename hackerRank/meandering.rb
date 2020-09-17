def meanderingArray(unsorted)
  print "Original array: "
  p unsorted
  sorted = unsorted.sort.reverse
  sorted_size = sorted.size
  print "Original array ordenado: "
  p sorted

  bigs = sorted.slice(0, sorted.size / 2)
  smalls = sorted.slice(sorted.size / 2, sorted.size).sort
  middle = sorted.slice(sorted.size / 2)

  array_intercalation(sorted_size, bigs, smalls, middle)
end

def array_intercalation(sorted_size, arr1, arr2, orfan)
  meanderin = []
  (sorted_size / 2).times do |i|
    meanderin << arr1[i]
    meanderin << arr2[i]
  end
  meanderin << orfan if sorted_size % 2 != 0
  print "Array Meandered: "
  p meanderin
end

arr1 = [5, 2, 7, 8, -2, 25, 25, 0]
meanderingArray(arr1)

string = nil
while string != "done"
  print "string > "
  string = gets.chomp
  
  print "fileName: "
  p string.strip.split.push(".rb").join
end

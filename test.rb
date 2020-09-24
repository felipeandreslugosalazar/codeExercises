def block_message_printer
  message = "Welcome to Block Message Printer"
  if block_given?
    #_________
  end
  puts "But in this function/method message is :: #{message}"
end

message = gets
block_message_printer { puts "This message remembers message :: #{message}" }

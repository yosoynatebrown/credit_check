

# Your Luhn Algorithm Here

def credit_check(card_number)
original = card_number
card_number = card_number.split("")
card_number.each_with_index {|num, i|
card_number[i] = num.to_i
if i % 2 == 0
  card_number[i] = num.to_i * 2
end
}
add_array = []
card_number.each_with_index {|num, index|
if num > 9
  add_array = []
  add_array = num.to_s.split("")
  add_array.each_with_index {|int, i|
  add_array[i] = int.to_i}
  card_number[index] = add_array.sum
end
}
if card_number.sum % 10 == 0
  puts "The number #{original} is valid!"
else
  puts "The number #{original} is invalid!"
end
end

# Output
## If it is valid, print "The number [card number] is valid!"
## If it is invalid, print "The number [card number] is invalid!"




credit_check("4024007106512380")

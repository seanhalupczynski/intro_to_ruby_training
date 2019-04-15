names = ["Tiger Woods", "Rickie Fowler", "Brooks Koepka", "Phil Mickelson"]

names.each do |name|
  puts name.split.first.split("").first
  puts name.split.last
end

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

numbers.each do |numb|
  if numb % 2 == 0
    puts "#{numb.to_s} is even"
  else
    puts "#{numb.to_s} is odd"
  end
end

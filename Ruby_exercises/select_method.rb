names = ["Tiger Woods", "Rickie Fowler", "Brooks Koepka", "Phil Mickelson"]

selected_golfers = names.select do |name|
  name.split.first.length < 5
end

puts selected_golfers

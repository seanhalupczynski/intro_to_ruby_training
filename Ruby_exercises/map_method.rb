names = ["Tiger Woods", "Rickie Fowler", "Brooks Koepka", "Phil Mickelson"]

golfers = names.map do |name|
  firstname = name.split.first,
  lastname = name.split.last
end
puts golfers

golfers_object = names.map do |nam|
  {
    "first": nam.split.first,
    "second": nam.split.last
  }
end
puts golfers_object

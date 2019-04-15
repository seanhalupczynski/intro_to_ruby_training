golfer1={
          :firstname => "Tiger",
          :lastname => "Woods"
        }
golfer2={
          :firstname => "Rickie",
          :lastname => "Fowler"
        }
golfer3={
          :firstname => "Brooks",
          :lastname => "Koepka"
        }
golfer4={
          :firstname => "Phil",
          :lastname => "Mickelson"
        }
puts "#{golfer1.keys.first}: #{golfer1.values.first}"
puts "#{golfer1.keys.last}: #{golfer1.values.last}"

foursome = [
  {
    :firstname => "Tiger",
    :lastname => "Woods"
  },
  {
    :firstname => "Rickie",
    :lastname => "Fowler"
  },
  {
    :firstname => "Brooks",
    :lastname => "Koepka"
  },
  {
    :firstname => "Phil",
    :lastname => "Mickelson"
  }
]
i=1
foursome.each do |key, val|
  puts "Golfer#{i}:  #{key[:firstname]} #{key[:lastname]}"
  i += 1
end

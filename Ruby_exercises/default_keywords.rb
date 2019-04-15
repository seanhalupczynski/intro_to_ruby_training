def name(options={})
  puts options[:first_name]
  puts options[:last_name]
  puts
end

name({first_name:"Sean", last_name:"Halupczynski"})


def add(a=2)
  puts a + 4
end

add

add(10)

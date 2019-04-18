class Menu
  attr_accessor :item
  attr_accessor :price

  def initialize(item:, price:)
    @item = item
    @price = price
  end
end

hamburger = Menu.new(item: "Hamburger", price: 10.00)
cheeseburger = Menu.new(item: "Cheeseburger", price: 11.00)
hot_dog = Menu.new(item: "Hot Dog", price: 5.00)
chili_dog = Menu.new(item: "Chili Dog", price: 6.50)
small_fry = Menu.new(item: "Small Fry", price: 2.00)
large_fry = Menu.new(item: "Large Fry", price: 3.00)
soda_pop = Menu.new(item: "Soda Pop", price: 1.50)

menuItems = [hamburger, cheeseburger, hot_dog, chili_dog, small_fry, large_fry, soda_pop]

def maxLengthOfMenuItem(items)
  itemLengthArray = items.map { |i| i.item.length }
  itemLengthArray.max
end

def displayMenu(menu)
  menu.each do |item|
    puts "#{item.item}#{"."*(maxLengthOfMenuItem(menu)+2-item.item.length)}#{("$%.2f" % item.price)}"
  end
end

displayMenu(menuItems)

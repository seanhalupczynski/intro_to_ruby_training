class Golfer
  attr_accessor :major_wins
  attr_accessor :first_name

  def initialize(first_name:, last_name:, gender:, pga_wins:, major_wins:)
    @first_name = first_name
    @last_name = last_name
    @gender = gender
    @pga_wins = pga_wins
    @major_wins = major_wins
  end

  def profile
    if @gender.downcase == "male"
      puts "#{@first_name} #{@last_name} has #{@pga_wins} on the PGA Tour. #{@major_wins} of those wins are in Majors."
    else
      puts "#{@first_name} #{@last_name} has #{@pga_wins} on the LPGA Tour. #{@major_wins} of those wins are in Majors."
    end
  end

  def name
    puts "#{@first_name} #{@last_name}"
  end

  def self.list(name)
    name.each do |n|
      puts n.name
    end
  end

  def sport
    if @gender.downcase == "male"
      puts "#{@first_name} #{@last_name} is on the PGA Tour."
    else
      puts "#{@first_name} #{@last_name} is on the LPGA Tour."
    end
  end
end

class Basketball
  attr_accessor :titles

  def initialize(first_name:, last_name:,gender:, titles:)
    @first_name = first_name
    @last_name = last_name
    @gender = gender
    @titles = titles
  end

  def profile
    if @gender.downcase == "male"
      puts "#{@first_name} #{@last_name} has won #{@titles} NBA Championships"
    else
      puts "#{@first_name} #{@last_name} has won #{@titles} WNBA Championships"
    end
  end

  def name
    puts "#{@first_name} #{@last_name}"
  end

  def self.list(name)
    name.each { |n| puts n.name }
  end

  def sport
    if @gender == "male"
      puts "#{@first_name} #{@last_name} is in the NBA."
    else
      puts "#{@first_name} #{@last_name} is in the WNBA."
    end
  end
end



tiger_woods = Golfer.new(
  first_name: "Tiger",
  last_name: "Woods",
  gender: "Male",
  pga_wins: 81,
  major_wins: 15
)

rickie_fowler = Golfer.new(
  first_name: "Rickie",
  last_name: "Fowler",
  gender: "Male",
  pga_wins: 5,
  major_wins: 0,
)

brooks_koepka = Golfer.new(
  first_name: "Brooks",
  last_name: "Koepka",
  gender: "Male",
  pga_wins: 5,
  major_wins: 3,
)

phil_mickelson = Golfer.new(
  first_name: "Phil",
  last_name: "Mickelson",
  gender: "Male",
  pga_wins: 44,
  major_wins: 5,
)

annika_sorenstam = Golfer.new(
  first_name: "Annika",
  last_name: "Sorenstam",
  gender: "Female",
  pga_wins: 72,
  major_wins: 10
)

michael_jordan = Basketball.new(
  first_name: "Michael",
  last_name: "Jordan",
  gender: "Male",
  titles: 6
)

lebron_james = Basketball.new(
  first_name: "LeBron",
  last_name: "James",
  gender: "Male",
  titles: 4
)

kobe_bryant = Basketball.new(
  first_name: "Kobe",
  last_name: "Bryant",
  gender: "Male",
  titles: 5
)


puts tiger_woods.first_name
puts rickie_fowler.profile
puts brooks_koepka.profile
puts phil_mickelson.profile

golfer_names = [tiger_woods, rickie_fowler, brooks_koepka, phil_mickelson]
basketball_names = [michael_jordan, lebron_james, kobe_bryant]

puts "----------Golfers-----------"
Golfer.list(golfer_names)
puts "----------Basketballers-----------"
Basketball.list(basketball_names)

# Golfer.has_5_or_more_majors(golfer_name)

# puts golfer_name.first_name
#
golfer_with_5_or_more_majors = golfer_names.select { |nam| nam.major_wins > 4 }
puts "----------Golfers w/ 5+ major wins-----------"
puts Golfer.list(golfer_with_5_or_more_majors)

basketball_with_5_or_more_titles = basketball_names.select { |nam| nam.titles > 4 }
puts "----------Basketballers w/ 5+ titles-----------"
puts Basketball.list(basketball_with_5_or_more_titles)

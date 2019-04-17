require "rspec"
# require "../Day2/inheritance_exercise.rb"

def upcase_all(array)
  array.map(&:upcase)
end

class Golfer
  attr_accessor :major_wins

  def initialize(first_name:, last_name:, gender:, pga_wins:, major_wins:, ranking:)
    @first_name = first_name
    @last_name = last_name
    @gender = gender
    @pga_wins = pga_wins
    @major_wins = major_wins
    @ranking = ranking
  end

  def profile
    if @gender.downcase == "male"
      # puts "#{@first_name} #{@last_name} has #{@pga_wins} wins on the PGA Tour. #{@major_wins} of those wins are in Majors."
      "#{@first_name} #{@last_name} has #{@pga_wins} wins on the PGA Tour. #{@major_wins} of those wins are in Majors."
    else
      # puts "#{@first_name} #{@last_name} has #{@pga_wins} wins on the LPGA Tour. #{@major_wins} of those wins are in Majors."
      "#{@first_name} #{@last_name} has #{@pga_wins} wins on the LPGA Tour. #{@major_wins} of those wins are in Majors."
    end
  end

  def name
    # puts "#{@first_name} #{@last_name}"
    "#{@first_name} #{@last_name}"
  end

  def world_ranking
    "#{name} is the #{@ranking}#{number_suffix} ranked player in the world."
  end

  def number_suffix
    if @ranking.to_s.length == 1
      case @ranking
      when 1
        "st"
      when 2
        "nd"
      when 3
        "rd"
      else
        "th"
      end
    else
      if @ranking.to_s.split("")[@ranking.to_s.split("").length - 2] == "1"
        "th"
      else
        case @ranking.to_s.split("")[@ranking.to_s.split("").length - 1]
        when "1"
          "st"
        when "2"
          "nd"
        when "3"
          "rd"
        else
          "th"
        end
      end
    end
  end

  def self.list_name(golfers)
    golfers.map do |n|
      n.name
    end.join(" ")
  end

  def self.list_profile(name)
    name.each do |n|
      puts n.profile
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
# sean_halupczynski = Golfer.new(first_name: "Sean", last_name: "Halupczynski", gender: "Male", pga_wins: 100, major_wins: 35, ranking: 1)
# puts sean_halupczynski.number_suffix
RSpec.describe '#upcase_all' do
  it 'upcases all the words' do
    expect(upcase_all(["one", "two", "three"])).to eq(["ONE", "TWO", "THREE"])
  end
end

RSpec.describe Golfer do
  describe '#name' do
    context 'golfer name' do
      it 'shows the golfers name' do
        sean_halupczynski = Golfer.new(first_name: "Sean", last_name: "Halupczynski", gender: "Male", pga_wins: 100, major_wins: 35, ranking: 1)
        expect(sean_halupczynski.name).to eq("Sean Halupczynski")
      end
    end
  end
end

RSpec.describe Golfer do
  describe '#profile' do
    context 'new golfer profile' do
      it 'displays the new golfer profile' do
        sean_halupczynski = Golfer.new(first_name: "Sean", last_name: "Halupczynski", gender: "Male", pga_wins: 100, major_wins: 35, ranking: 1)
        expect(sean_halupczynski.profile).to eq("Sean Halupczynski has 100 wins on the PGA Tour. 35 of those wins are in Majors.")
      end
    end
  end
end

RSpec.describe Golfer do
  describe '#world_ranking' do
    context 'golfer\'s world ranking' do
      it 'displays the golfer\'s world ranking' do
        sean_halupczynski = Golfer.new(first_name: "Sean", last_name: "Halupczynski", gender: "Male", pga_wins: 100, major_wins: 35, ranking: 11)
        expect(sean_halupczynski.world_ranking).to eq("Sean Halupczynski is the 11th ranked player in the world.")
      end
    end
  end
end

RSpec.describe Golfer do
  describe '#list_name' do
    context 'list gofler names' do
      it 'lists the names of the golfers' do
        golfers = [Golfer.new(first_name: "Sean", last_name: "Halupczynski", gender: "Male", pga_wins: 100, major_wins: 35, ranking: 2), Golfer.new(first_name: "Corissa", last_name: "Halupczynski", gender: "Female", pga_wins: 100, major_wins: 35, ranking: 1)]
        expect(Golfer.list_name(golfers)).to eq("Sean Halupczynski Corissa Halupczynski")
      end
    end
  end
end

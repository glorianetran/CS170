#1 Palindrome

#1a
def palindrome?(str)
  str.gsub(/\W/, "").downcase == str.gsub(/\W/, "").downcase.reverse
end

puts palindrome?("A man, a plan, a canal -- Panama")
puts palindrome?("Madam, I'm Adam!") 
puts palindrome?("Abracadabra")
puts palindrome?("LALALALA!!!!----???")
puts palindrome?("LALALALAL!!!!----???")
puts

def count_words(string)
    str_array = string.gsub(/[^\w\s']/, "").downcase.split
    count = Hash.new(0)
    str_array.each do |word|
        count[word] += 1
    end
    puts count
end

#1b
count_words("Hello my name is Glo")
count_words("A man, a plan, a canal -- Panama")
count_words ("Doo bee doo bee doo")
count_words("SHALALLALA MONKEY BUTT BUTT BUTTS")
puts


#2 Rock, Paper, Scissors

class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end
    
def rps_game_winner(game)
 raise WrongNumberOfPlayersError unless game.length == 2
 play1 = game[0][1].downcase
 play2 = game[1][1].downcase
 raise NoSuchStrategyError unless play1 =~ /^[rps]$/ && play2 =~ /^[rps]$/
 if play1 == play2
     return game[0]
 elsif (play1 == "r" && play2 == "s" || play1 == "s" && play2 == "p" || play1 == "p" && play2 == "r")
     return game[0]
 else 
     return game[1]
 end
end


print rps_game_winner([["Armando", "P"], [ "Dave", "S" ]])
puts
print rps_game_winner([["Glo", "R"], ["Helen", "P"]])
puts
print rps_game_winner([["Regina", "S"], ["Deana", "P"]])
puts
#uncomment to run error test
#print rps_game_winner([["Monkey", "S"], ["Giraffe", "Z"]])
puts

#3 Anagrams 
#Almudena said using group by was ok!
def combine_anagrams(words)
    words.group_by { |word|
    word.downcase.chars.sort
    }.values
end

print combine_anagrams(['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams',
'scream'] )
puts

print combine_anagrams(['ARREST', 'arrest', 'arrest', 'racs', 'racs','RAREST', 'creams',
'scream'] )
puts
print combine_anagrams(['BREAD', 'beard', 'ARREST', 'auctioned', 'debard','rarest', 'creams',
'cautioned'] )
puts
print combine_anagrams(['hello', 'mello', 'shells', 'hehe'] )
puts


#4 Basic OOP

class Dessert
    attr_accessor :name
    attr_accessor :calories
    def initialize(name, calories)
        @name = name
        @calories = calories
    end

 def healthy?
     return calories < 200
 end

 def delicious?
    return true
 end
 
end

class JellyBean < Dessert
    attr_accessor :flavor
     def initialize(name, calories, flavor)
        @flavor = flavor
        super(name, calories)
     end
    
     def delicious?
        false
     end
end

puts
puts "Testing Dessert"
puts

cake = Dessert.new("strawberry cake", 150)
puts "Is my #{cake.name} healthy? #{cake.healthy?}"
puts "What is my name? #{cake.name}"
puts "What is my calorie count? #{cake.calories}"
puts "Am I delicious? #{cake.delicious?}"
cake.name = "blueberry pie"
puts "My name is now #{cake.name}"
cake.calories = 50
puts "My calorie count is now #{cake.calories}"

puts
puts "Testing JellyBean"
puts
pear_jelly = JellyBean.new("Green Bean", 200, "pear")
puts "My calorie count is #{pear_jelly.calories}"
puts "My name is #{pear_jelly.name} "
puts "My flavor is #{pear_jelly.flavor} "
puts "Is pear_jelly delicious? #{pear_jelly.delicious?}"
puts "Is pear_jelly healthy? #{pear_jelly.healthy?}"
pear_jelly.name = "Red Bean"
pear_jelly.flavor = "Apple"
pear_jelly.calories = 50
puts "My new calorie count is #{pear_jelly.calories}"
puts "Is pear_jelly healthy after change? #{pear_jelly.healthy?}"
puts "My new name is #{pear_jelly.name} "
puts "My new flavor is #{pear_jelly.flavor} "





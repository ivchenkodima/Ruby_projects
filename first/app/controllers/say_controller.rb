class SayController < ApplicationController
  def hello
  		@time = Time.now
  end

  def goodbye
  end
end

# def say_goodnight(name)
# 	result = 'Good night, '+ name
# 	return result
# end

# puts say_goodnight("Dima")
# puts say_goodnight("Jade") 



# def  say(name)
# 	"goodbye, #{name.capitalize}"
# end
# puts say_goodnight('ass')


ages =[]
for person in @people
	ages << people.ages
end

a = ['s','s','a']
# same as
a = %w{s s a}



def wrap &b
	print "Санта сказал: "
	3.times(&b)
	print "\n"
end
wrap { print "Эй! " }




class Order < ActiveRecord::Base
	has_many :line_items
	def self.find_all_unpaid
		self.where('paid = 0')
	end
	def total
		sum = 0
		line_items.each {|li| sum += li.total}
		sum
 	end
 end

# /
#  class Greeter
#  	def initialize(name)
#  		@name = name
#  	end

#  	def name
#  		@name
#  	end

#  	def name=(new_name)
#  		@name = new_name
#  	end
# end

# g = Greeter.new("Барни")
# g.name #=> Барни
# g.name = "Бетти"
# g.name #=> Бетти



module StoreHelper
	def capitalize_words(string)
		string.split(' ').map {|word| word.capitalize}.join(' ')
	end
end
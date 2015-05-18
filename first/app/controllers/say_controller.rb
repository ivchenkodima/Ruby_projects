class SayController < ApplicationController
  def hello
  		@time = Time.now
  end

  def goodbye
  end
end

def say_goodnight(name)
	result = 'Good night, '+ name
	return result
end

puts say_goodnight("Dima")
puts say_goodnight("Jade") 



def  say(name)
	"goodbye, #{name.capitalize}"
end
puts say_goodnight('ass')

class MegaGreeter
	attr_accessor :names

	#Create and object
	def initialize(names = "World")
		@names = names
	end

	#Say hi to everyone!
	def say_hi
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("each")
			# @names is a list, so iterate
			@names.each do |name|
				puts "Hello #{name}!"
			end
		else
			puts "Hello #{@names}!"
		end
	end

		#Say bye to everyone
	def say_bye
		if @names.nil?
			puts "..."
		elsif @names.respond_to?("join")
			#Join the names with commas
			puts "Goodbye #{@names.join(", ")}, g'luck"
		else
			puts "Goodbye #{names}. See ya m8."
		end
	end
end

if __FILE__ == $0
	mg = MegaGreeter.new
	mg.say_hi
	mg.say_bye

	#Change the name to "Steve"
	mg.names = "Steve"
	mg.say_hi
	mg.say_bye

	#Change to an array of names
	mg.names = ["Linda", "Conor", "Paul", "John", "Kate"]
	mg.say_hi
	mg.say_bye

	mg.names = nil
	mg.say_hi
	mg.say_bye
end

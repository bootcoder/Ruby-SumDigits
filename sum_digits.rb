##########################
# RUBY      SUM  NUMBERS #
##########################
### Hunter T. Chapman  ###
## bootcoder@gmail.com  ##
##########################

# require 'awesome_print'

##########################
# 			PSEUDO CODE
##########################
=begin

***INPUT***
digits as strings

***OUTPUT***
each line of digits summed


*** CODE ***
write a program which accepts ARGV[0] with a file name
write a function which parses through ARGV[0]
for each line in ARGV[0] send the line to a function to sum the digits given

write a function reduce_nums which takes a single arr as input
convert strings to integers
reduce arr using clown face

=end


##########################
# 			INITIAL CODE
##########################

def sum_nums_app
	puts "ERROR: Please give a valid filename as an argument." if ARGV[0] == nil
	File.readlines(ARGV[0]).each do |line|
		line.gsub!("\n", "") if line.include? "\n"
		puts reduce_nums(line.split("")) unless line.split[0] == nil
	end
end


def reduce_nums(num_arr)
	num_arr.map!(&:to_i).reduce(:+)
end

##########################
# 		ACTIONABLE CODE
##########################

sum_nums_app

##########################
# 			TEST CODE
##########################

# ap reduce_nums(["1","1","9"]) == 11

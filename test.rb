# def get_info(message)
# 	puts message.center(50)
# 	gets.chomp
# end

# students =[]

# while true
# 	questions = {:name=>"Please Enter Name", :chomper=>"Please Enter Cohort", :email=>"what is your email?", :skype =>"what is your skype?"}
# 	student={}
# 	#question_symbols.each do |z|
# 	questions.each do |key, value|
# 		student[key]=get_info(value)
# 		break if student[:name].empty?
# 	end
# 	break if student[:name].empty?
# 	students<< student
# end
# puts students.inspect


def testthisyield(name)
	output_values = 2
	yield(output_values, name) if block_given?
end

testthisyield("Hello") do |x, y|
	puts x
	puts y
end

puts "\n"

testthisyield("Hello2") do |x|
	puts x
end

testthisyield("Hello"){}

puts "\nlambda testing"

def compose f, g
   -> (*args){ f.call(g.call(*args)) }
end

mult2 = -> (n,n2){ n2*n*2 }
add1  = -> (n){ n+1 }
mult2_add1 = compose(add1, mult2)


puts mult2_add1.call(3,2) # 7



x = [3,5,1,2,7,9,8,13,25,32]
sum = 0 
x.each{|i| sum +=i}
puts sum

y = x.reject {|i| i < 10 }
puts y

names = ['John', 'KB', 'Oliver', 'Cory', 'Matthew', 'Christopher']
shuffle = names.shuffle
shuffle.each{|i| puts i}
puts names.reject{|i| i.length <5 }

alpha = ('a'..'z').to_a 
shalpha = alpha.shuffle
puts shalpha.last
puts shalpha.first
puts ["a","e","i","o","u"].include?(shalpha.first) ? shalpha.first+" is a vowel" : shalpha.first+" is not a vowel"


for i in (0..10)
	r = Random.new
	num = []
	num[i] = r.rand(55..100)
	puts num
end


for i in (0..10)
	r = Random.new
	max = x[0]
	min = x[0]
	num = []
	num[i] = r.rand(55..100)
	x = num
	x.each{|i| max = i if i > max}
	num.each{|i| min = i if i < min}
end

for i in (0..5)
	string = []
	string[i] = (65+rand(26)).chr 
	puts string
end

for i in (0..10)
	for j in (0..5)
		string = []
		string[i] = (65+rand(26)).chr 
		puts string
	end
end
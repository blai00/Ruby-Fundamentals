(1..255).each{|i| puts i}

puts (1..255).select(&:odd?)

sum = 0
(1..255).each{|i| puts "Number:#{i} Sum: #{sum+=i}"}


def iterate
	x = [1,3,5,7,8,13]
	x.each{|i| puts i}
end


def max
	x = [1,3,5,7,8,13]
	y = x.max
	puts y
end


def average 
	x = [1,3,5,7,8,13,40,12,122,-12,12]
	sum = 0
	x.each{|i| sum+=i}
	puts sum
	y = (sum)/(x.length)
	puts y
end


def odd
	y = []
	for i in 1..255
		y.push(i) if i %2 != 0
	end
	puts y
end


def greater
	x = [1,3,5,7,8,13,40,12,122,-12,23]
	y = 10
	counter = 0
	x.each{|x| counter +=1 if x>y}
	puts counter
end

def square 
	x = [1,5,10,-2]
	x.each{|i| puts i*i}
end

def shift
	x = [1,5,7,10,-2]
	counter = 0 
	x.each{ x[counter] = x[counter+=1] }
	x[x.length-1] =0
	puts x 
end

def trio
	x = [1,3,5,7,8,13,40,12,122,-12,23]
	max = x[0]
	min = x[0]
	x.each{|i| max = i if i >max}
	x.each{|i| min = i if i <min}
	puts "Max = #{max}"
	puts "Min = #{min}"
end


def string
	x = [1,3,5,7,8,13,40,12,122,-12,23]
	x.each{|i| if i >0 then puts i else puts "Dojo" end}
end


class Array
    def total # A way to get the total of an array's numbers
        cost = 0
        self.each do |value|
            cost += value
        end
        cost
    end
end

class Element
    attr_reader :price # The price of the element
    attr_reader :ammount # What percentage of the element is in your body.

	def initialize(price, ammount) # What hapens when the class is created
		@price = price
		@ammount = ammount
    end
    
    def quantity_init(grams) # Initalizes how much is in your body
        grams * @ammount
    end

=begin
	def price
		@price
	end

	def ammount
		@ammount
    end
=end
end

price = {o: 0.30, c: 2.40, h: 12.00, n: 0.40, ca: 11.00, p: 4.00, k: 85.00, s: 0.25, na: 7.00, cl: 0.15}

o = Element.new(0.30, 0.65)
c = Element.new(2.40, 0.18)
h = Element.new(12, 0.10)
n = Element.new(0.40, 0.03)
ca = Element.new(11, 0.015)
p = Element.new(4, 0.01)
k = Element.new(85, 0.0035)
s = Element.new(0.25, 0.0025)
cl = Element.new(0.15, 0.0015)
na = Element.new(7, 0.0015)

test = true

test = false unless o.price == price[:o]
test = false unless c.price == price[:c]
test = false unless h.price == price[:h]
test = false unless n.price == price[:n]
test = false unless ca.price == price[:ca]
test = false unless p.price == price[:p]
test = false unless k.price == price[:k]
test = false unless s.price == price[:s]
test = false unless cl.price == price[:cl]
test = false unless na.price == price[:na]

#p test

p o

puts o.price
puts o.ammount
puts [25, 25, 50].total

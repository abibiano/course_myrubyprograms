class Parent
def mtd_p
@var = 10
end
end

class Child < Parent
def mtd_c
@var = 20
end
end

c = Child.new
p = Parent.new
print "#{c.mtd_c}, #{p.mtd_p}, #{c.mtd_p}"
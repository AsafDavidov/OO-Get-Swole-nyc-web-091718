require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


g1 = Gym.new('gold')
g2 = Gym.new('planet')

l1 = Lifter.new("mike",300)
l2 = Lifter.new("nate",600)
l3 = Lifter.new("oak",200)

m1 = Membership.new(g1,l1,10)
m2 = Membership.new(g2,l1,20)
m3 = Membership.new(g1,l2,10)
m4 = Membership.new(g2,l3,20)

binding.pry
 puts "amazing"

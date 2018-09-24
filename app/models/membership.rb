class Membership
  attr_accessor :gym, :lifter, :cost
  @@all = []
  def self.all
    @@all
  end
  def initialize( lifter, gym, cost)
    @gym = gym
    @lifter = lifter
    @cost = cost

    @@all << self
  end
end#end of Membership class

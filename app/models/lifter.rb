class Lifter
  attr_accessor :name, :lift_total
  @@all = []

  def self.all
    @@all
  end

  def self.average_lift
    @@all.map do |lifter|
      lifter.lift_total
    end.inject(0){|sum,x| sum + x }.to_f / @@all.size.to_f
  end

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self
  end

  def memberships
    Membership.all.select do |member|
      member.lifter == self
    end
  end

  def total_cost
    self.memberships.map do |my_member|
      my_member.cost
    end.inject(0){|sum,x| sum + x }
  end

  def gyms
      self.memberships.map do |my_member|
        my_member.gym
      end
  end

  def sign_up(membership_cost,gym)
    Membership.new(self,gym,membership_cost)
  end

end # end of lifter class

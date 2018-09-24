class Gym
  attr_accessor :name
  @@all = []
  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def memberships
    Membership.all.select do |member|
      member.gym == self
    end
  end

  def lifters
    self.memberships.map do |member|
      member.lifter
    end
  end

  def lifter_names
    self.lifters.map do |lifter|
      lifter.name
    end
  end

  def lift_total_for_gym
    self.memberships.map do |member|
      member.lifter.lift_total
    end.inject(0){|sum,x| sum + x }
  end
end # end of Gym class

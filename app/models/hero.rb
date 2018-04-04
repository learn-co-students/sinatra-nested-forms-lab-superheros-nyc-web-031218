class Hero
  attr_accessor :name, :power, :biography, :team
  @@all = []

  def initialize(name, power, biography)
    @name = name
    @power = power
    @biography = biography
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_team(team)
    @@all.select do |hero|
      hero.team == team
    end
  end
  
end

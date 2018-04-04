class Superhero
  attr_accessor :name, :power, :biography
  ALL = []
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:biography]
    ALL << self
  end

  def self.all
    ALL
  end
end

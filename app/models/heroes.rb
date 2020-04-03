class Heroes 
  attr_accessor :name, :power, :bio
  
  @@all = []
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @biography = params[:bio]
    save
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
end 
    
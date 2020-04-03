class Teams 
  
  attr_accessor :name, :motto 
  
  @@all = []
  
  def initialize(params)
    @name = params[:name]
    @motto = params[:motto]
    save 
  end 
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
end 
  
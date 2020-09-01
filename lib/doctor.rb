class Doctor
  
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def new_appointment(date, patient)
    Appintment.new(date, patient, self)
  end
  
  def appointmens
    Appintment.all.select {|song| song.artist == self}
  end
  
  
  
end
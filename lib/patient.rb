class Patient
  
  attr_accessor :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    self.class.all << self
  end
  
  def new_appointment(date, doctor)
    Appintment.new(date, self, doctor)
  end
  
  def appointmens
    Appintment.all.select {|ap| ap.patient == self}
  end
  
  def patients
    appointmens.map {|ap| ap.patient}
  end
  
  
  
  
end
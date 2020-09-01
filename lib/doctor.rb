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
  
  def appointments
    Appintment.all.select {|ap| ap.doctor == self}
  end
  
  def patients
    appointmens.map {|ap| ap.patient}
  end
  
end
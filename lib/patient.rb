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
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appintment.all.select {|ap| ap.patient == self}
  end
  
  def doctors
    appointmens.map {|ap| ap.doctor}
  end
  
  
  
  
end
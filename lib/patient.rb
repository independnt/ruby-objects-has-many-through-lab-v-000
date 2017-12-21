class Patient

  attr_accessor :name, :appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(app)
    self.appointments << app
    appointment.patient = self
  end

  def doctors
    self.appointments{|d| d.doctor}
  end

end

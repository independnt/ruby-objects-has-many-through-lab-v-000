class Doctor
attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(app)
    self.appointments << app
    appointment.doctor = self
  end

  def patients
    self.appointments.collect {|p| p.patients}
  end

end

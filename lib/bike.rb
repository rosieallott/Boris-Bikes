class Bike

  def initialize
    @working = true
  end

=begin
  def working?
    true
  end
=end

  def report_broken
    @working = false
  end

  def working?
    @working
  end

end

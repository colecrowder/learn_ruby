class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds / 3600
    @seconds = @seconds - (hours * 3600)
    minutes = @seconds / 60
    @seconds = @seconds - (minutes * 60)
    sprintf("%02d:%02d:%02d", hours, minutes, @seconds)
  end

end

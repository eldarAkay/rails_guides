require 'time'
require 'date'

def time_difference(time_a, time_b)
  difference = time_b - time_a
  p difference

  if difference > 0
    difference
  else
    24 * 3600 + difference
  end
end

a = Time.parse('2015-12-31 00:00:00 +0100')
b = Time.parse('2015-12-31 24:00:00 +0100')

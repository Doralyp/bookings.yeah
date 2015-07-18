require 'benchmark'

class Myawesomeclass

  puts "*" * 50
  puts "This report shows the user CPU time, system CPU time, the sum of the user and system CPU times, and the elapsed real time. The unit of time is seconds."
  Benchmark.bm(10) do |x|
   x.report("includes:") {Room.includes(:bookings)}
   x.report("joins:") {Room.joins(:bookings)}
   x.report("each:") {Room.all.each do |room| room.bookings end}
  end

  puts "*" * 50
  puts "Here is my custom benchmark in seconds using Ruby's Time Module:"
  start1 = Time.now
  Room.includes(:bookings)
  duration1 = Time.now - start1
  p "Includes takes #{duration1} seconds"

  start2 = Time.now
  Room.joins(:bookings)
  duration2 = Time.now - start2
  p "Joins takes #{duration2} seconds"

  start3 = Time.now
  Room.all.each do |room|
    room.bookings
  end
  duration3 = Time.now - start3
  p "Each takes #{duration3} seconds"
  p "Joins are the most efficient in terms of relative runtime speeds with #{duration2} seconds"

end
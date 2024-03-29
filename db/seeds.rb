# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

Flight.destroy_all
City.destroy_all

City.create([
  { :city => "Chicago Midway", :airport_code => "MDW", :information => "", :created_at => "2013-05-20 14:45:46", :updated_at => "2013-05-20 14:45:46" },
  { :city => "Los Angeles", :airport_code => "LAX", :information => "", :created_at => "2013-05-20 14:45:56", :updated_at => "2013-05-20 14:45:56" },
  { :city => "San Francisco", :airport_code => "SFO", :information => "", :created_at => "2013-05-20 16:19:51", :updated_at => "2013-05-20 16:19:51" },
  { :city => "New York", :airport_code => "JFK", :information => "", :created_at => "2013-05-20 16:20:02", :updated_at => "2013-05-20 16:20:02" }
], :without_protection => true )

100.times do
  @lastid = City.last.id
  @flight_num = rand(999)+1
  @city1 = City.all[rand(City.count)-1]
  @city2 = @city1
  while @city2 == @city1
    @city2 = City.all[rand(City.count)-1]
  end
  Flight.create(
    { :flight_num => @flight_num, :miles => 100, :dept_id => @city1.id, :arr_id => @city2.id, :dept_time => "2000-01-01 14:47:00", :arr_time => "2000-01-01 16:47:00", :num_seats => rand(20..150), :created_at => "2013-05-20 14:48:41", :updated_at => "2013-05-20 14:48:41" },
    {without_protection: true }
   )
end



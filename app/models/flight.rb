class Flight < ActiveRecord::Base
  attr_accessible :arr_id, :arr_time, :dept_id, :dept_time, :duration, :flight_num, :miles, :num_seats

  belongs_to :departure_airport, class_name: 'City', foreign_key: 'dept_id'
  belongs_to :arrival_airport, class_name: 'City', foreign_key: 'arr_id'


  def minutes
    "#{(self.arr_time - self.dept_time) / 60} minutes"
  end
end

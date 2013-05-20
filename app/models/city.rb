class City < ActiveRecord::Base
  attr_accessible :airport_code, :city, :information

  has_many :departures, class_name: 'Flight', foreign_key: 'dept_id'
  has_many :arrivals, class_name: 'Flight', foreign_key: 'arr_id'

end

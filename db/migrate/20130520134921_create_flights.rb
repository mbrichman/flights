class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :flight_num
      t.integer :miles
      t.integer :duration
      t.integer :dept_id
      t.integer :arr_id
      t.time :dept_time
      t.time :arr_time
      t.integer :num_seats

      t.timestamps
    end
  end
end

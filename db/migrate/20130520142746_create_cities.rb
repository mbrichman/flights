class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :city
      t.string :airport_code
      t.string :information

      t.timestamps
    end
  end
end

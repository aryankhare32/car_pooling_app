class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.string :start_city
      t.string :end_city
      t.time :start_time
      t.time :end_time
      t.date :date_of_journey

      t.timestamps
    end
  end
end

class CreateVehicles < ActiveRecord::Migration[6.0]
  def change
    create_table :vehicles do |t|
      t.string :license_number
      t.string :model
      t.integer :seats
      t.string :vehicle_number
      
      t.timestamps
    end
  end
end

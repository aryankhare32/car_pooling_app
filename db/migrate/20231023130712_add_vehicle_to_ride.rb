class AddVehicleToRide < ActiveRecord::Migration[6.0]
  def change
    add_reference :rides, :vehicle, null: false, foreign_key: true
  end
end

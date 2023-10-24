class Ride < ApplicationRecord
    belongs_to :vehicle
    validates :start_city, :end_city, :start_time, :end_time, :date_of_journey, :vehicle_id, presence: true
    
    scope :valid, ->(date) {where('date_of_journey>= ?', date)} 
end

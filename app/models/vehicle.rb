class Vehicle < ApplicationRecord
    has_many :rides
    belongs_to :user
    validates :license_number, :model, :seats, :vehicle_number, :user_id, presence: true
end

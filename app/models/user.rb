class User < ApplicationRecord
    has_many :vehicles
    validates :name, :age, :adhaar_number, presence: true
end

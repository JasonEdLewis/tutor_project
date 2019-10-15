class Student < ApplicationRecord
    has_many :sessions
    has_many :instructors, through: :sessions
    has_many :admins, through: :sessions
    validates :school_id, uniqueness: true
end

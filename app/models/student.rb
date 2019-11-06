class Student < ApplicationRecord
    has_many :sessions
    has_many :instructors, through: :sessions
    has_many :admins, through: :sessions
    validates :name, uniqueness: true
end

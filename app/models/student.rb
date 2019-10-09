class Student < ApplicationRecord
    has_many :sessions
    has_many :instructors, through: :sessions
end

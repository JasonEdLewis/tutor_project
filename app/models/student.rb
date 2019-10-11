class Student < ApplicationRecord
    has_many :sessions
    has_many :instructors, through: :sessions
    validates :student_id, uniqueness: true
end

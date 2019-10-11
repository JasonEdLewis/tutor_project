class Instructor < ApplicationRecord
    has_many :sessions
    has_many :students, through: :sessions
    validates :name, uniqueness: true
    
end

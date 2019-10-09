class Instructor < ApplicationRecord
    has_many :sessions
    has_many :students, through: :sessions
end

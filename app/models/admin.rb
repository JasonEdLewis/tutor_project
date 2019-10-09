class Admin < ApplicationRecord
    has_secure_password
    has_many :sessions
    has_many :students, through: :sessions
    has_many :instructors, through: :sessions
end

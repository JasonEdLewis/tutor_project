class Instructor < ApplicationRecord
    has_many :sessions
    has_many :students, through: :sessions, :dependent => :delete_all
    validates :name, uniqueness: true
    
end

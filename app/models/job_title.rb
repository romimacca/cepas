class JobTitle < ApplicationRecord
    has_many :oenologistmagazinejobs
    has_many :magazines, through: :oenologistmagazinejobs
    has_many :oenologists, through: :oenologistmagazinejobs
end

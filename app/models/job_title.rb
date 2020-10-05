class JobTitle < ApplicationRecord
    has_many :oenologistmagazinejobs, dependent: :destroy
    has_many :magazines, through: :oenologistmagazinejobs, dependent: :destroy
    has_many :oenologists, through: :oenologistmagazinejobs, dependent: :destroy
end

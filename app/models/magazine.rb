class Magazine < ApplicationRecord
    has_many :oenologistmagazinejobs
    has_many :oenologists, through: :oenologistmagazinejobs
    has_many :job_titles, through: :oenologistmagazinejobs
end

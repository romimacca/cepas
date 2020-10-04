class Oenologist < ApplicationRecord
    has_many :oenologistmagazinejobs
    has_many :magazines, through: :oenologistmagazinejobs
    has_many :job_titles, through: :oenologistmagazinejobs
end

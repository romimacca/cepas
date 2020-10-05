class Magazine < ApplicationRecord
    has_many :oenologistmagazinejobs, dependent: :destroy
    has_many :oenologists, through: :oenologistmagazinejobs, dependent: :destroy
    has_many :job_titles, through: :oenologistmagazinejobs, dependent: :destroy
end

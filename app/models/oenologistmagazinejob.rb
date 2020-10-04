class Oenologistmagazinejob < ApplicationRecord
  belongs_to :oenologist
  belongs_to :magazine
  belongs_to :job_title
end

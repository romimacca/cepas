class Oenologist < ApplicationRecord
    has_many :oenologistmagazinejobs
    has_many :magazines, through: :oenologistmagazinejobs
    has_many :job_titles, through: :oenologistmagazinejobs

    def set_references(arr_jobs)
        self.oenologistmagazinejobs.destroy_all

        arr_jobs.each do |m, jobs|
            if m != ''
                jobs.each do |j|
                    if j != ''
                        temp_moj = Oenologistmagazinejob.new
                        temp_moj.oenologist = self
                        temp_moj.magazine = Magazine.find(m.to_i)
                        temp_moj.job_title = JobTitle.find(j.to_i)
                        temp_moj.save
                    end
                end
            end
        end
    end

end

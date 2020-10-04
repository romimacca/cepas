class Wine < ApplicationRecord
    has_many :wine_strains
    has_many :strains, througth: :wine_strains
end

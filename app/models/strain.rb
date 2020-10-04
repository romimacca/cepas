class Strain < ApplicationRecord
    has_many :wine_strains
    has_many :wines, througth: :wine_strains
end

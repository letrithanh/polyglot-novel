class Volume < ApplicationRecord

    has_many :chapters

    belongs_to :novels

end

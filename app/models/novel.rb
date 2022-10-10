class Novel < ApplicationRecord

    validates :name, presence: true

    validates :description, presence: true

    has_many :volumes

    has_one_attached :cover

    validates :cover, presence: true

end

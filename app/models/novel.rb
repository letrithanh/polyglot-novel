class Novel < ApplicationRecord

    validates :name, presence: true

    has_many :volumes

    has_one_attached :cover

end

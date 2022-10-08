class User < ApplicationRecord

    before_save { self.email = email.downcase }

    validates :name, presence: true,
                     length: { maximum: 50 }

    VALID_EMAIL_REGEX = /[a-zA-Z0-9]+[\w\-\.]+[a-zA-Z0-9]@[a-zA-Z0-9\-]+\.[a-z]{2,}/i
    validates :email, presence: true,
                      uniqueness: true,
                      format: { with: VALID_EMAIL_REGEX },
                      length: { maximum: 255 }

    validates :password, length: { minimum: 6 }

    has_secure_password

end

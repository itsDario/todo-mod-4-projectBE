class User < ApplicationRecord
    has_secure_password
    has_many :events
    has_many :calenders, through: :events
    validates :username, presence: true, uniqueness: true, length: { minimum: 1 }
end
  
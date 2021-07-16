class Photographer < ApplicationRecord
    has_many :photos
    has_secure_password

    validates :name, presence: true
    validates :age, presence: true, numericality: { only_integer: true }
    validates :camera, presence: true
    validates :gender, presence: true
    validates :category, presence: true

end

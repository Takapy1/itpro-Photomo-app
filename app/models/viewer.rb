class Viewer < ApplicationRecord
    validates :name, presence: true
    validates :age, presence: true, numericality: { only_integer: true}
    validates :gender, presence: true


    has_secure_password
end

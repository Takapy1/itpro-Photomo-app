class Photo < ApplicationRecord
    belongs_to :photographer
    has_many :comments, dependent: :destroy
    
    mount_uploader :image, ImageUploader

    validates :image, presence: true
    validates :date, presence: true
    validates :title, presence: true
    validates :description, presence: true
end

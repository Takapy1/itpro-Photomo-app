class Photo < ApplicationRecord
    belongs_to :photographer, dependent: :destroy
    mount_uploader :image, ImageUploader

    validates :image, presence: true
    validates :date, presence: true
    validates :title, presence: true
    validates :description, presence: true
end

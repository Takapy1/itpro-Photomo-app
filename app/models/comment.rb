class Comment < ApplicationRecord
  belongs_to :photo
  belongs_to :viewer
end

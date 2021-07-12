class AddReferencesToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_reference :photos, :photographer, foreign_key: true
  end
end

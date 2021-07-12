class RenamePhotoIdToPhotos < ActiveRecord::Migration[6.0]
  def change
    rename_column :photos, :photo_id, :image_id 
  end
end

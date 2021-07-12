class RenameImageIdToPhoto < ActiveRecord::Migration[6.0]
  def change
    rename_column :photos, :image_id, :image
  end
end

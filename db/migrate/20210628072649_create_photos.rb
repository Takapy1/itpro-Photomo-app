class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.string :photo_id
      t.date :date
      t.string :location
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

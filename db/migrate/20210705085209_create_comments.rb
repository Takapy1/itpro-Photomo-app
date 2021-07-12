class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :photo, null: false, foreign_key: true
      t.references :viewer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

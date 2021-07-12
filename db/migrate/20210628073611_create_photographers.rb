class CreatePhotographers < ActiveRecord::Migration[6.0]
  def change
    create_table :photographers do |t|
      t.string :name
      t.integer :age
      t.string :camera
      t.string :gender
      t.string :category

      t.timestamps
    end
  end
end

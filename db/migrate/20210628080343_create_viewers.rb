class CreateViewers < ActiveRecord::Migration[6.0]
  def change
    create_table :viewers do |t|
      t.string :name
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end

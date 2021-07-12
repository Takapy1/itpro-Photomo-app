class AddColumnToPhotographers < ActiveRecord::Migration[6.0]
  def change
    add_column :photographers, :password_digest, :string
  end
end

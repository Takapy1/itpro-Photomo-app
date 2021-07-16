class AddStatusColumnToViewers < ActiveRecord::Migration[6.0]
  def change
    add_column :viewers, :status, :string
    add_column :photographers, :status, :string
  end
end

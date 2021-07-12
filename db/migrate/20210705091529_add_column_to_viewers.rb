class AddColumnToViewers < ActiveRecord::Migration[6.0]
  def change
    add_column :viewers, :password, :digest
  end
end

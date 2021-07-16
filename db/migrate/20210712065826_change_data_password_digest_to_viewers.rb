class ChangeDataPasswordDigestToViewers < ActiveRecord::Migration[6.0]
  def change
    rename_column :viewers, :password, :password_digest
    change_column :viewers, :password_digest, :string
  end
end

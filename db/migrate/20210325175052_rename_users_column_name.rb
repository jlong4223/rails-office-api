class RenameUsersColumnName < ActiveRecord::Migration[6.1]
  def change
    # changes password column name to password_digest to use with bcrypt
    rename_column :users, :password, :password_digest
  end
end

class AddSecretCodeToUser < ActiveRecord::Migration
  def change
    add_column :users, :secret_code, :string
    add_index :users, :secret_code, unique: true
  end
end

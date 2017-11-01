class AddUserIdToSecretcode < ActiveRecord::Migration
  def change
    add_column :secretcodes, :user_id, :integer
  end
end

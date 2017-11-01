class CreateSecretcodes < ActiveRecord::Migration
  def change
    create_table :secretcodes do |t|
      t.string :SecretCode

      t.timestamps null: false
    end
  end
end

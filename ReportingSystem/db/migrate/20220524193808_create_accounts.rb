class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :account_code
      t.string :account_name
      t.string :account_description
      t.timestamps
    end
  end
end

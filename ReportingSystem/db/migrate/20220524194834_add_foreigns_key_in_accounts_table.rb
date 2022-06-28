class AddForeignsKeyInAccountsTable < ActiveRecord::Migration[7.0]
  def change
    #add foreign key from groups table in accounts table
    add_reference :accounts, :group, index_account:true
    add_foreign_key :accounts, :groups
    #add foreign key from sub groups table in accounts table
    add_reference :accounts, :sub_group, index_account: true
    add_foreign_key :accounts, :sub_groups
    #add foreign key from sub groups table in accounts table
    add_reference :accounts, :account_category, index_account: true
    add_foreign_key :accounts, :account_categories
  end
end

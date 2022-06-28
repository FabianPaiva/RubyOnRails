class AddForeignsKeysInAccountCategoriesTable < ActiveRecord::Migration[7.0]
  def change
    #add foreign key from groups table in account categories table
    add_reference :account_categories, :group, index_account:true
    add_foreign_key :account_categories, :groups
    #add foreign key from sub groups table in account categories table
    add_reference :account_categories, :sub_group, index_account: true
    add_foreign_key :account_categories, :sub_groups
  end
end

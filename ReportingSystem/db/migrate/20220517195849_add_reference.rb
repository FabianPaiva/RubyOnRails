class AddReference < ActiveRecord::Migration[7.0]
  def change
    add_reference :sub_groups, :group, index_account:true
    add_foreign_key :sub_groups, :groups
  end
end

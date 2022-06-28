class AddGroupCodeToGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :group_code, :integer
  end
end

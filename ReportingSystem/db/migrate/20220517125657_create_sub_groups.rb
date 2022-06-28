class CreateSubGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_groups do |t|
      t.string :code_sub_group
      t.string :name_sub_group
      t.references :groups, index_account: true
      t.timestamps
    end
  end
end

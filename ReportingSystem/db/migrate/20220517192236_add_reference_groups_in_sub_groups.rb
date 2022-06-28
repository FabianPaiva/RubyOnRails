class AddReferenceGroupsInSubGroups < ActiveRecord::Migration[7.0]
  def change
    add_reference :sub_groups, :groups, index_account: true
  end
end

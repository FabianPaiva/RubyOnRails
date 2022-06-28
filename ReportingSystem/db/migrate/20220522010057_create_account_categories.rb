class CreateAccountCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :account_categories do |t|
      t.string :account_category_code
      t.string :account_category_name
      t.timestamps
    end
  end
end

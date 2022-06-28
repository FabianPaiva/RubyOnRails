class Group < ApplicationRecord
 has_many :sub_groups
 has_many :account_categories
 has_many :accounts
end

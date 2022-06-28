class SubGroup < ApplicationRecord
  belongs_to :group
  has_many :account_categories
  has_many :accounts
end

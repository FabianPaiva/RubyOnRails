class AccountCategory < ApplicationRecord
  belongs_to :group
  belongs_to :sub_group
  has_many :accounts
end

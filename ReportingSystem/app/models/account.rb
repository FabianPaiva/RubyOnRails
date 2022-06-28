class Account < ApplicationRecord
  belongs_to :group #el modelo account pertenece a un grupo
  belongs_to :sub_group #el modelo account pertence a un sub grupo
  belongs_to :account_category #accounte pertence a una categoria
end

Rails.application.routes.draw do

  root "welcome#welcome"

  get 'groups', to: 'groups#index'
  get 'menu_account', to: 'menu#menu_account'

  get 'group/:id', to: 'groups#show', as: 'group'
  get 'group/:id/edit', to: 'groups#edit', as: 'group_edit'
  patch 'group/:id', to:'groups#update'

  get 'groups/new',to: 'groups#new', as: 'group_new'
  post 'groups', to: 'groups#create'
  #routes sub groups
  get 'sub_groups', to: 'sub_groups#index_sub_group'
  get 'sub_groups/new',to: 'sub_groups#new_sub_group', as: 'sub_group_new'
  post 'sub_groups', to: 'sub_groups#create'
  get 'sub_group/:id', to: 'sub_groups#show', as: 'sub_group'
  get 'sub_group/:id/edit', to:'sub_groups#edit_sub_group', as: 'sub_group_edit'
  patch 'sub_group/:id', to: 'sub_groups#update'
  #routes account categories
  get 'account_categories', to: 'account_categories#index_account_category'
  get 'account_categories/new', to: 'account_categories#new_account_category', as: 'account_category_new'
  post 'account_categories', to: 'account_categories#create'
  get 'account_category/:id', to: 'account_categories#show', as: 'account_category'
  get 'account_category/:id/edit', to:'account_categories#edit_account_category', as: 'account_category_edit'
  patch 'account_category/:id', to: 'account_categories#update'
  #routes account
  get 'accounts', to: 'accounts#index_account'
  get 'accounts/new', to: 'accounts#new_account', as: 'account_new'
  post 'accounts', to: 'accounts#create'
  get 'account/:id', to: 'accounts#show', as: 'account'
  get 'account/:id/edit', to:'accounts#edit_account', as: 'account_edit'
  patch 'account/:id', to: 'accounts#update'

end

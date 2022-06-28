class AccountCategoriesController < ApplicationController
  def index_account_category
      @account_category = AccountCategory.all
  end

  def new_account_category
    @account_category = AccountCategory.new
  end

  def create
    @account_category = AccountCategory.new(account_category_params)
    if @account_category.save
      redirect_to account_categories_path
    else
      render :new_account_category
    end
  end

  def edit_account_category
    @account_category =AccountCategory.find(params[:id])
  end

  def update
    @account_category =AccountCategory.find(params[:id])
    if @account_category.update(account_category_params)
      redirect_to account_categories_path
    else
      render :edit_account_category
    end
  end

  private
  def account_category_params
    params.require(:account_category).permit(:group_id, :sub_group_id, :account_category_code, :account_category_name)
  end
end

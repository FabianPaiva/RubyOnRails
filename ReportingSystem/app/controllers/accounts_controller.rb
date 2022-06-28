class AccountsController < ApplicationController
  #metodo para indexar registros en las vistas del lado cliente
  def index_account
    @account = Account.all
  end

  def new_account
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      redirect_to accounts_path
    else
      render :new_account
    end
  end

  def edit_account
    @account =Account.find(params[:id])
  end

  def update
    @account =Account.find(params[:id])
    if @account.update(account_params)
      redirect_to accounts_path
    else
      render :edit_account
    end
  end

  private
  def account_params
    params.require(:account).permit(:group_id, :sub_group_id, :account_category_id, :account_code, :account_name, :account_description)
  end
end


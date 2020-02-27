class AccountsController < ApplicationController

  before_action :authenticate_user

  def index
    @accounts = current_user.accounts #Account.all
    render json: @accounts
  end

  def show
    @account = Account.find params[:id]
    if @account.user === current_user
      render json: @account, include: 'transactions'
    else
      render json: {error: 'Permission denied!'}
    end
  end

  def create
    newAccount = Account.create name: params[:name], description: params[:description], user_id: current_user.id
    render json: {
                    success: true,
                    data: newAccount
                  }
  end

  def update
  end

  def destroy
    
  end
end

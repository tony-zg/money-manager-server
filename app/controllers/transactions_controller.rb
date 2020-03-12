class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
    render json: @transactions
  end

  def show
  end

  def create
    transaction = Transaction.create text: params[:text], amount: params[:amount], account_id: params[:account_id]
    render json: transaction
  end

  def update
  end

  def destroy
  end
end

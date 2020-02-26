class TransactionsController < ApplicationController

  def index
    @transactions = Transaction.all
    render json: @transactions
  end

  def show
  end

  def create
  end

  def update
  end

  def destroy
  end
end

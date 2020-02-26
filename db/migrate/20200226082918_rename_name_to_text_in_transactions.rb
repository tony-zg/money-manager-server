class RenameNameToTextInTransactions < ActiveRecord::Migration[5.2]
  def change
    rename_column :transactions, :name, :text
  end
end

class CreateTranscations < ActiveRecord::Migration[5.2]
  def change
    create_table :transcations do |t|
      t.string :name
      t.integer :account_id

      t.timestamps
    end
  end
end

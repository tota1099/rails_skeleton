class AddAccounts < ActiveRecord::Migration[7.1]
  def change
    create_table :accounts do |t|
      t.string :name, null: false, limit: 255

      t.timestamps
    end
  end
end

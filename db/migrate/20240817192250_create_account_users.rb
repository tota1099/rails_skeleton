class CreateAccountUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :account_users do |t|
      t.references :user, null: false, index: true, foreign_key: true
      t.references :account, null: false, index: true, foreign_key: true

      t.timestamps

      t.index %i[account_id user_id], unique: true
    end
  end
end

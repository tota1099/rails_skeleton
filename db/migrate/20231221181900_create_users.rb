class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, null: false, index: { unique: true }
      t.string :password, null: false
      t.string :reset_password_token, index: { unique: true }
      t.datetime :reset_password_sent_at

      t.timestamps
    end
  end
end

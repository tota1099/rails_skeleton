class AddUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 255
      t.string :email, null: false, index: { unique: true }, limit: 255
      t.string :password, null: false, limit: 72
      t.string :reset_password_token, index: { unique: true }, limit: 72
      t.datetime :reset_password_sent_at

      t.timestamps
    end
  end
end

# frozen_string_literal: true

class DeviseCreateAdminUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_users do |t|
      
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""
      t.datetime :remember_created_at
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.timestamps null: false
    end

    add_index :admin_users, :email,                unique: true
    # add_index :admin_users, :reset_password_token, unique: true

  end
end

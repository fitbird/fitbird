class DeviseTokenAuthCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      ## User
      t.string  :email
      t.string  :name
      t.string  :nickname
      t.string  :image
      t.string  :first_name
      t.string  :last_name
      t.string  :gender,                     limit: 1
      t.date    :birth_date
      t.integer :height
      t.integer :weight

      ## Roles
      t.text   :roles,                       array: true, default: []

      ## OAuth Authenticatable
      t.string :provider
      t.string :uid,                         null: false, default: ""

      ## Tokens
      t.text :tokens

      ## Database Authenticatable
      t.string :encrypted_password,          null: false, default: ""

      ## Recoverable
      t.datetime :reset_password_sent_at
      t.string   :reset_password_token

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.string   :current_sign_in_ip
      t.string   :last_sign_in_ip
      t.integer  :sign_in_count,             null: false, default: 0

      ## Confirmable
      t.datetime :confirmed_at
      t.datetime :confirmation_sent_at
      t.string   :confirmation_token
      t.string   :unconfirmed_email # Only if using confirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      t.timestamps
    end

    add_index :users, :email
    add_index :users, :uid,                  unique: true
    add_index :users, :reset_password_token, unique: true
    # add_index :users, :confirmation_token, unique: true
    # add_index :users, :unlock_token,       unique: true
  end
end

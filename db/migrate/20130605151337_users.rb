class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, :first_name, :last_name, :status, :password_digest, :email
      t.boolean :active
      t.timestamps
    end
  end
end

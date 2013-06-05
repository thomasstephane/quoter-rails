class Customers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name, :middle_name, :last_name, :address_street, 
      :address_city, :address_country, :email, :gender
      t.integer :zip_code, :phone_number
      t.timestamps
    end
  end
end

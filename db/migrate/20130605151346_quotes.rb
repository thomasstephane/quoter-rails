class Quotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :ref, :currency, :discount, :status, :comment
      t.integer :customer_id, :user_id
      t.date :submitted_at, :due_at, :approved_at, :closed_at, :follow_up_at
      t.timestamps
    end
  end
end

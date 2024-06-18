class CreatePurchases < ActiveRecord::Migration[7.1]
  def change
    create_table :purchases do |t|
      t.references :user, null: false, foreign_key: true
      t.references :trip, null: false, foreign_key: true
      t.string :pay_type
      t.date :purchase_date
      t.date :real_travel_date
      t.float :amount

      t.timestamps
    end
  end
end

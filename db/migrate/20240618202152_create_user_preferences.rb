class CreateUserPreferences < ActiveRecord::Migration[7.1]
  def change
    create_table :user_preferences do |t|
      t.references :user, null: false, foreign_key: true
      t.string :kind
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
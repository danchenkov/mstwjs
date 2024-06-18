class CreateTripFeatures < ActiveRecord::Migration[7.1]
  def change
    create_table :trip_features do |t|
      t.references :trip, null: false, foreign_key: true
      t.string :kind
      t.string :slug
      t.text :description

      t.timestamps
    end
  end
end

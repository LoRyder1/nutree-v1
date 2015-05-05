class CreateFertilizations < ActiveRecord::Migration
  def change
    create_table :fertilizations do |t|
      t.decimal :nitrogen
      t.decimal :rate
      t.decimal :density
      t.datetime :soil_date
      t.string :soil_condition
      t.text :notes
      t.references :goal, index: true, foreign_key: true
      t.references :fertilizer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

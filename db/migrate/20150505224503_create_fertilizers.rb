class CreateFertilizers < ActiveRecord::Migration
  def change
    create_table :fertilizers do |t|
      t.string :name
      t.integer :concentration
      t.decimal :density

      t.timestamps null: false
    end
  end
end

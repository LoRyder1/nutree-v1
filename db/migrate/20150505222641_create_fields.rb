class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.integer :acres
      t.references :farm, index: true, foreign_key: true
      t.references :crop, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

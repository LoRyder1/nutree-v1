class CreateFormulas < ActiveRecord::Migration
  def change
    create_table :formulas do |t|
      t.string :name
      t.integer :rate

      t.timestamps null: false
    end
  end
end

class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.integer :season
      t.integer :crop_yield
      t.integer :nitrogen_credits
      t.decimal :recommended_nitrogen
      t.decimal :actual_crop_yield
      t.string :remaining_nitrogen
      t.string :applied_nitrogen
      t.references :field, index: true, foreign_key: true
      t.references :formula, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

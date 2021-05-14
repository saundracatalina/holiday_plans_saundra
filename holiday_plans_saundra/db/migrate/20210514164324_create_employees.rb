class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.integer :vac_days_left, default: 30
      t.references :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end

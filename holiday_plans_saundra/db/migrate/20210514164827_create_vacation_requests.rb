class CreateVacationRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :vacation_requests do |t|
      t.string :status, default: "pending"
      t.datetime :start_date
      t.datetime :end_date
      t.integer :resolved_by
      t.references :employee, null: false, foreign_key: true

      t.timestamps
    end
  end
end

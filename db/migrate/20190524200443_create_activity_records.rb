class CreateActivityRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :activity_records do |t|
      t.date :date
      t.string :description
      t.integer :quantity
      t.references :activity_type, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

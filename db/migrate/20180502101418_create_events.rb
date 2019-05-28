class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.integer :calender_id
      t.string :name
      t.string :description
      t.integer :date

      t.timestamps
    end
  end
end

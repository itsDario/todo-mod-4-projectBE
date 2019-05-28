class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.integer :user_id
      t.integer :calender_id
      t.integer :date

      t.timestamps
    end
  end
end

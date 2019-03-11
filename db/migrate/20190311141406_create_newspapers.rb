class CreateNewspapers < ActiveRecord::Migration[5.2]
  def change
    create_table :newspapers do |t|
      t.integer :tribe_id
      t.date :date

      t.timestamps
    end
  end
end

class CreateNewspapers < ActiveRecord::Migration[5.2]
  def change
    create_table :newspapers do |t|
      t.references :tribe
      t.date :date

      t.timestamps
    end
  end
end

class CreateBoxes < ActiveRecord::Migration[5.2]
  def change
    create_table :boxes do |t|
      t.integer :picture_id
      t.text :text
      t.string :category

      t.timestamps
    end
  end
end

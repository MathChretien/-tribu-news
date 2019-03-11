class CreateTribes < ActiveRecord::Migration[5.2]
  def change
    create_table :tribes do |t|
      t.string :name
      t.string :profile_pic
      t.text :address
      t.boolean :subscribe

      t.timestamps
    end
  end
end

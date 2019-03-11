class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :layout
      t.integer :box_id
      t.integer :newspaper_id

      t.timestamps
    end
  end
end

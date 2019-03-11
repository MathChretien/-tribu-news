class CreatePages < ActiveRecord::Migration[5.2]
  def change
    create_table :pages do |t|
      t.string :layout
      t.references :box
      t.references :newspaper

      t.timestamps
    end
  end
end

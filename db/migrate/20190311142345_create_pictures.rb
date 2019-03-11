class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.integer :newspaper_id
      t.string :cloudinary_url

      t.timestamps
    end
  end
end

class CreateClownImages < ActiveRecord::Migration[7.0]
  def change
    create_table :clown_images do |t|
      t.string :url
      t.integer :clown_id

      t.timestamps
    end
  end
end

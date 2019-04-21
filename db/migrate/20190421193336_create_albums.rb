class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.text :url
      t.text :image
      t.text :name

      t.timestamps
    end
  end
end

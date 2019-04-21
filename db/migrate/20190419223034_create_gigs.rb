class CreateGigs < ActiveRecord::Migration[5.1]
  def change
    create_table :gigs do |t|
      t.date :date
      t.text :location
      t.text :artists

      t.timestamps
    end
  end
end

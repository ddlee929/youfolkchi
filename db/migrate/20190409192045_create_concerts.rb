class CreateConcerts < ActiveRecord::Migration[5.1]
  def change
    create_table :concerts do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

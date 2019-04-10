class CreatePerformances < ActiveRecord::Migration[5.1]
  def change
    create_table :performances do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end

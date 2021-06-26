class CreatePerformances < ActiveRecord::Migration[6.1]
  def change
    create_table :performances do |t|
      t.string :title
      t.text :summary
      t.string :img
      t.integer :price

      t.timestamps
    end
  end
end

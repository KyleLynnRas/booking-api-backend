class UpdatePerformancesSchema < ActiveRecord::Migration[6.1]
  def change
    add_column :performances, :photographer, :string
    remove_column :performances, :price
  end
end

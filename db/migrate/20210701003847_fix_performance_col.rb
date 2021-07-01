class FixPerformanceCol < ActiveRecord::Migration[6.1]
  def change
    rename_column :performances, :type, :category
  end
end

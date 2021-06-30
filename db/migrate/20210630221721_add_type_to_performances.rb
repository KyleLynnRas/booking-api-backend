class AddTypeToPerformances < ActiveRecord::Migration[6.1]
  def change
    add_column :performances, :type, :string
  end
end

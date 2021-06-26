class FixReviewSchema < ActiveRecord::Migration[6.1]
  def change
    rename_column :reviews, :type, :category
  end
end

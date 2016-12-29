class RemoveRatingFromPrivseshes < ActiveRecord::Migration[5.0]
  def change
    remove_column :privseshes, :rating, :integer
  end
end

class AddRatingToPrivseshes < ActiveRecord::Migration[5.0]
  def change
    add_column :privseshes, :rating, :string
  end
end

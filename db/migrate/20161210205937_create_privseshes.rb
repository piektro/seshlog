class CreatePrivseshes < ActiveRecord::Migration[5.0]
  def change
    create_table :privseshes do |t|
      t.references :user, foreign_key: true
      t.date :date
      t.string :location
      t.string :activity
      t.integer :rating
      t.text :note

      t.timestamps
    end
  end
end

class CreateShareseshes < ActiveRecord::Migration[5.0]
  def change
    create_table :shareseshes do |t|
      t.references :user, foreign_key: true
      t.date :when
      t.string :where
      t.string :subject
      t.text :yoursesh

      t.timestamps
    end
  end
end

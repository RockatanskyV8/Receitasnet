class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.integer :rating
      t.text :comment
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end

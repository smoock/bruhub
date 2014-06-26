class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :user_id
      t.string :ingredients
      t.string :difficulty

      t.timestamps
    end
  end
end

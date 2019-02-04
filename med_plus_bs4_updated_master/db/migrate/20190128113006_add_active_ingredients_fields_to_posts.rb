class AddActiveIngredientsFieldsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :active_large, :text
    add_column :posts, :active_regular, :text
    add_column :posts, :active_red, :text
    add_column :posts, :dose, :string
  end
end

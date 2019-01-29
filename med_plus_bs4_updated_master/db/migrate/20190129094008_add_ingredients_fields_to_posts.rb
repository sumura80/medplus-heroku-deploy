class AddIngredientsFieldsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :inactive_regular, :text
    add_column :posts, :inactive_bold, :text
    add_column :posts, :inactive_red, :text
    add_column :posts, :instructions_regular, :text
    add_column :posts, :instructions_bold, :text
    add_column :posts, :instructions_red, :text
    add_column :posts, :other_info_regular, :text
    add_column :posts, :other_info_bold, :text
    add_column :posts, :other_info_red, :text
  end
end

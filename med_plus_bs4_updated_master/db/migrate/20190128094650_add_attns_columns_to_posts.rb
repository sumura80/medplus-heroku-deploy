class AddAttnsColumnsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :attn_large, :text
    add_column :posts, :attn_bold, :text
    add_column :posts, :attn_regular, :text
    add_column :posts, :attn_red, :text
  end
end

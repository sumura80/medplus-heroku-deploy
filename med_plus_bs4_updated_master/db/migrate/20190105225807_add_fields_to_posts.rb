class AddFieldsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :title_jp, :string
    add_column :posts, :description_jp, :text
  end
end

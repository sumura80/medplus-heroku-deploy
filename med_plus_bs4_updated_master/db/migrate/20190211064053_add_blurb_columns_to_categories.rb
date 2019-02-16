class AddBlurbColumnsToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :blurb, :text
    add_column :categories, :image, :string
  end
end

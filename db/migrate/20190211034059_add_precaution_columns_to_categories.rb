class AddPrecautionColumnsToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :precaution_bold, :text
    add_column :categories, :precaution_red, :text
    add_column :categories, :precaution_large, :text
  end
end

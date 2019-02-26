class AddPrecautionButtonFieldsToCategories < ActiveRecord::Migration[5.1]
  def change
    add_column :categories, :precaution_uri, :string
    add_column :categories, :precaution_uri_title, :string
  end
end

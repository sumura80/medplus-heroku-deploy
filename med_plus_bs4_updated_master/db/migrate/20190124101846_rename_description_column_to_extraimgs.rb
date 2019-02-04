class RenameDescriptionColumnToExtraimgs < ActiveRecord::Migration[5.1]
  def change
  	rename_column :extraimgs, :description, :extraimg_description
  end
end

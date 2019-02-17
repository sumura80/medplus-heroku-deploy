class RenameDescriptionColumnToInfoimgs < ActiveRecord::Migration[5.1]
  def change
  	rename_column :infoimgs, :description, :infoimg_description
  end
end

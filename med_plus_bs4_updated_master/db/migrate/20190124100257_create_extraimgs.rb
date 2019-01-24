class CreateExtraimgs < ActiveRecord::Migration[5.1]
  def change
    create_table :extraimgs do |t|
      t.string :extraimg_name
      t.string :extraimage
      t.text :description
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end

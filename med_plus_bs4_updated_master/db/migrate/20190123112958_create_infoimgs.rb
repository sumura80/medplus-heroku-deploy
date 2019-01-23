class CreateInfoimgs < ActiveRecord::Migration[5.1]
  def change
    create_table :infoimgs do |t|
      t.string :infoimg_name
      t.text :description
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end

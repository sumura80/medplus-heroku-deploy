class AddLinksToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :link_note, :text
    add_column :posts, :en_source, :text
    add_column :posts, :jp_source, :text
    add_column :posts, :en_pdf, :text
    add_column :posts, :jp_pdf, :text
    add_column :posts, :en_precautions, :string
  end
end

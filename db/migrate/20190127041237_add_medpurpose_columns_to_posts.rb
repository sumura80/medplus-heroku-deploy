class AddMedpurposeColumnsToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :med_purpose, :text
    add_column :posts, :medical_type, :string
    add_column :posts, :indication, :text
  end
end

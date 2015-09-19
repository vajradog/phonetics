class AddSlugToPhonetics < ActiveRecord::Migration
  def change
    add_column :phonetics, :slug, :string
    add_index :phonetics, :slug
  end
end

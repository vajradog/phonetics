class CreatePhonetics < ActiveRecord::Migration
  def change
    create_table :phonetics do |t|
      t.string :word
      t.timestamps
    end
  end
end

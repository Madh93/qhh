class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name
      t.string :longname
      t.integer :category
      t.string :tags
      t.string :address
      t.integer :postal
      t.string :phone
      t.string :mail
      t.string :webpage
      t.float :latitude
      t.float :longitude
      t.text :text1
      t.text :text2
      t.text :text3

      t.timestamps null: false
    end
  end
end

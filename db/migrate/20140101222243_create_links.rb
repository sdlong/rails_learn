class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :content
	  t.string :title
      t.string :type
      t.string :author_name
      t.string :author_url
      t.string :provider_name
      t.string :provider_url
      t.text :description
      t.string :thumbnail_url
      t.string :thumbnail_width
      t.string :thumbnail_height
      t.string :html
      t.string :width
      t.string :height

      t.timestamps
    end
  end
end

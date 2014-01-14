# -*- encoding : utf-8 -*-
class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      
      # for jquery preview
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
      t.string :favicon_url

      # for page
      t.string :content
      t.string :intro
      t.text :messenge
      t.string :page_tag
      t.integer :count_click, :default => 0
      t.timestamps
    end
  end
end

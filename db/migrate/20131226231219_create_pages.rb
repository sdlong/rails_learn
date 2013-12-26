class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :link
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end

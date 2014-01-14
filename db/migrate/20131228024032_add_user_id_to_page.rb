# -*- encoding : utf-8 -*-
class AddUserIdToPage < ActiveRecord::Migration
  def change
  	add_column :pages, :user_id, :integer
  end
end

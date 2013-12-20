class AddProfilepicToUser < ActiveRecord::Migration
  def change
    add_column :users, :profilepic, :text
  end
end

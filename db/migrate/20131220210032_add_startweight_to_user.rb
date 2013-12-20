class AddStartweightToUser < ActiveRecord::Migration
  def change
    add_column :users, :startweight, :integer
  end
end

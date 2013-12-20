class AddDesiredweightToUser < ActiveRecord::Migration
  def change
    add_column :users, :desiredweight, :integer
  end
end

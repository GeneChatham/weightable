class CreateWeighIns < ActiveRecord::Migration
  def change
    create_table :weigh_ins do |t|
      t.references :user, index: true
      t.text :weightpic
      t.integer :currentweight
      t.text :description

      t.timestamps
    end
  end
end

class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.string :name
      t.string :phone
      t.integer :wait
      t.integer :size

      t.timestamps
    end
  end
end

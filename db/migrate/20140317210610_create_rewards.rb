class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.string :type
      t.integer :amount

      t.timestamps
    end
  end
end

class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.integer :amount
      t.string :reward_type
      t.integer :mission_id

      t.timestamps
    end
  end
end

class CreateActiveMissions < ActiveRecord::Migration
  def change
    create_table :active_missions do |t|
      t.integer :agent_id
      t.integer :mission_id
      t.string :status

      t.timestamps
    end
  end
end

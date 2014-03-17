class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.integer :combat
      t.integer :stealth
      t.integer :persuasion
      t.integer :wits
      t.integer :max_health

      t.timestamps
    end
  end
end

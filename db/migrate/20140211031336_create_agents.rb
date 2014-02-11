class CreateAgents < ActiveRecord::Migration
  def change
    create_table :agents do |t|
      t.string :name
      t.integer :aim
      t.integer :stealth
      t.integer :fortitude
      t.integer :deception
      t.integer :perception

      t.timestamps
    end
  end
end

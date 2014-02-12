class CreateMissions < ActiveRecord::Migration
  def change
    create_table :missions do |t|
      t.string :description
      t.integer :duration

      t.timestamps
    end
  end
end

class CreateStations < ActiveRecord::Migration[5.0]
  def change
    create_table :stations do |t|
      t.integer :position
      t.integer :number_chains
      t.integer :station_number
      t.integer :free_chains
      t.string :station_name
      t.integer :lockers
      t.integer :security

      t.timestamps
    end
  end
end

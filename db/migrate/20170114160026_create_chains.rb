class CreateChains < ActiveRecord::Migration[5.0]
  def change
    create_table :chains do |t|
      t.string :status
      t.string :model
      t.integer :securityLevel

      t.timestamps
    end
  end
end

class CreateSpots < ActiveRecord::Migration[7.1]
  def change
    create_table :spots do |t|
      t.string :name
      t.text :description
      t.string :location

      t.timestamps
    end
  end
end

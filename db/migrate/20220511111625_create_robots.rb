class CreateRobots < ActiveRecord::Migration[7.0]
  def change
    create_table :robots do |t|
      t.string :facing
      t.integer :x_coordinate, default: 0
      t.integer :y_coordinate, default: 0

      t.timestamps
    end
  end
end

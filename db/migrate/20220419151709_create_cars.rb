class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :model
      t.string :make
      t.integer :year
      t.string :trim
      t.text :description

      t.timestamps
    end
  end
end

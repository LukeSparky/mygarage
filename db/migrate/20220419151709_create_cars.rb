class CreateCars < ActiveRecord::Migration[7.0]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :cars, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :model
      t.string :make
      t.integer :year
      t.string :trim
      t.text :description

      t.timestamps
    end
  end
end

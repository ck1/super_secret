class CreateThingType1s < ActiveRecord::Migration
  def self.up
    create_table :thing_type1s do |t|
      t.string :name
      t.string :address
      t.integer :number_of_peaches

      t.timestamps
    end
  end

  def self.down
    drop_table :thing_type1s
  end
end

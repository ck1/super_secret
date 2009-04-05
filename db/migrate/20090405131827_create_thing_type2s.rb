class CreateThingType2s < ActiveRecord::Migration
  def self.up
    create_table :thing_type2s do |t|
      t.integer :width
      t.integer :height
      t.text :description

      t.timestamps
    end
  end

  def self.down
    drop_table :thing_type2s
  end
end

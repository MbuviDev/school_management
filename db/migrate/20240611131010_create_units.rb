class CreateUnits < ActiveRecord::Migration[7.1]
  def change
    create_table :units do |t|
      t.integer :cloud
      t.integer :oop
      t.integer :ooad
      t.integer :statistics

      t.timestamps
    end
  end
end

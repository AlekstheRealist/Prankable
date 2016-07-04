class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :pack
      t.string :script

      t.timestamps
    end
  end
end

class CreateConversations < ActiveRecord::Migration
  def change
    create_table :conversations do |t|
      t.string :name
      t.integer :phone_number
      t.string :animal_script
      
      t.timestamps
    end
  end
end

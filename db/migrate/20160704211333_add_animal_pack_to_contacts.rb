class AddAnimalPackToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :animal_pack, :string
  end
end

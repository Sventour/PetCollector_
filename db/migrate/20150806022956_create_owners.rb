class CreateOwners < ActiveRecord::Migration
  def change
    create_table :owners do |t|
	  t.string :firstname
	  t.string :lastname
      t.timestamps null: false
    end
  end
end

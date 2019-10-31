class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.text :name
	    t.integer :yes
	    t.integer :no
      t.timestamps null: false
    end
  end
end

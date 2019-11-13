class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :user_id, auto_increment: true
      t.string :first_name
	    t.string :last_name
	    t.string :email
	    t.string :password
      t.timestamps null: false
    end
  end
end

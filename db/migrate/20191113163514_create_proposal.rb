class CreateProposal < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.integer :proposal_id, auto_increment: true
      t.text :name
	    t.text :status
	    t.text :result
	    t.integer :number_votes
	    t.integer :number_yes
	    t.integer :number_no
	    t.integer :number_abstain
      t.timestamps null: false
    end
  end
end



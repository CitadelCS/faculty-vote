class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :vote_id, auto_increment: true
      t.integer :user_id
      t.integer :proposal_id
      t.string :vote_type
      t.timestamps null: false
    end
  end
end


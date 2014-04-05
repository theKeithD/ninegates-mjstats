class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.date :date
      t.string :name, limit: 40
      t.binary :rule_flags, default: "", limit: 2
      t.integer :p1_id, :p2_id, :p3_id, :p4_id, limit: 2
      t.integer :p1_final_score, :p2_final_score, :p3_final_score, :p4_final_score, limit: 4

      t.timestamps
    end
    add_index :games, :name
  end
end

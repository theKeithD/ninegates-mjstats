class CreateHands < ActiveRecord::Migration
  def change
    create_table :hands do |t|
      t.string :round_name, limit: 5
      t.integer :game_id
      t.integer :p1_change, :p2_change, :p3_change, :p4_change
      t.integer :p1_yaku, :p2_yaku, :p3_yaku, :p4_yaku, default: 0, null: false, limit: 8
      t.boolean :p1_is_yakuman, :p2_is_yakuman, :p3_is_yakuman, :p4_is_yakuman
      t.binary :dora, limit: 12

      t.timestamps
    end
    add_index :hands, [:game_id, :round_name]
  end
end

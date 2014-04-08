class AddPlayerForeignKeys < ActiveRecord::Migration
  def up
  	change_table :games do |t|
  		t.foreign_key :players, dependent: :nullify, name: 'p1_id_fk', column: 'p1_id'
  		t.foreign_key :players, dependent: :nullify, name: 'p2_id_fk', column: 'p2_id'
  		t.foreign_key :players, dependent: :nullify, name: 'p3_id_fk', column: 'p3_id'
  		t.foreign_key :players, dependent: :nullify, name: 'p4_id_fk', column: 'p4_id'
  	end
  	add_index :games, :p1_id
  	add_index :games, :p2_id
  	add_index :games, :p3_id
  	add_index :games, :p4_id
  end
  def down
  	change_table :games do |t|
  		t.remove_foreign_key :players, name: 'p1_id_fk', column: 'p1_id'
  		t.remove_foreign_key :players, name: 'p2_id_fk', column: 'p2_id'
  		t.remove_foreign_key :players, name: 'p3_id_fk', column: 'p3_id'
  		t.remove_foreign_key :players, name: 'p4_id_fk', column: 'p4_id'
  	end
  	remove_index :games, :p1_id
  	remove_index :games, :p2_id
  	remove_index :games, :p3_id
  	remove_index :games, :p4_id
  end
end

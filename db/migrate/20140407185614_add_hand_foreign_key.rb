class AddHandForeignKey < ActiveRecord::Migration
  def up
  	change_table :hands do |t|
  		t.foreign_key :games, dependent: :nullify, name: 'game_id_fk', column: 'game_id'
  	end
  	add_index :hands, :game_id
  end
  def down
  	change_table :hands do |t|
  		t.remove_foreign_key :games, name: 'game_id_fk', column: 'game_id'
  	end
  	remove_index :hands, :game_id
  end
end

class Game < ActiveRecord::Base
	include Bitfields

	has_many :players
	has_many :hands

	bitfield :rule_flags, game_flag_hash

	def game_flag_hash
		# TODO: get some sleep and implement this
		# something something load game_rules.yaml
	end
end

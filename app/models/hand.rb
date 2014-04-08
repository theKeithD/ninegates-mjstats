class Hand < ActiveRecord::Base
	include Bitfields

	belongs_to :game

	#bitfield :p1_yaku, yaku_bitfield_hash
	#bitfield :p2_yaku, yaku_bitfield_hash
	#bitfield :p3_yaku, yaku_bitfield_hash
	#bitfield :p4_yaku, yaku_bitfield_hash

	def yaku_bitfield_hash
		# TODO: get some sleep and implement this 
		# something something load yaku.yaml
		yaku = Hash.new
		yaku[1] = "Riichi"

		yaku
	end
end

json.array!(@hands) do |hand|
  json.extract! hand, :id, :round_name, :p1_change, :p1_yaku, :p1_is_yakuman, :p2_change, :p2_yaku, :p2_is_yakuman, :p3_change, :p3_yaku, :p3_is_yakuman, :p4_change, :p4_yaku, :p4_is_yakuman, :dora
  json.url hand_url(hand, format: :json)
end

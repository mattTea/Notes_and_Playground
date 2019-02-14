# Hash to replace condictionals

dictionary_hash = {
  :bear => "A creature that fishes in the river for salmon.",
  :river => "A body of water that contains salmon, and sometimes bears.",
  :salmon => "A fish, sometimes in a river, sometimes in a bear, and sometimes in both."
}

puts dictionary_hash[:bear]


# Group the array of hashes below into a hash, where each key of the hash is a sport,
# and each value of the hash is a list of names of people who play that sport.

players = [
  { :name => "Sam", :sport => "tennis" },
  { :name => "Mary", :sport => "squash" },
  { :name => "Ed", :sport => "tennis" },
  { :name => "Mark", :sport => "football" }
]

players_by_sport = {}

players.each do |player|
  sport = player[:sport]

  if players_by_sport[sport] == nil
    players_by_sport[sport] = [] # <- note this syntax (set up 'sport' as a key, with empty array as value)
  end

  players_by_sport[sport].push(player[:name])
end

puts players_by_sport
json.array!(@quests) do |quest|
  json.partial! 'quests/quest', quest: quest
end

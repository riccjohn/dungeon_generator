defmodule DungeonGenerator.Reason do
  def get_reasons do
    [
      "A promise of treasure and death",
      "You are cursed. The Plague-Bearer who dwells in the dungeon can lift it, they say.",
      "Rumors of an enormous treasure, presumably cursed.",
      "A promise of answers to age-old questions.",
      "You have been sentenced to Dungeon Death. Survive and be free.",
      "A strange and hypnotic star guided you here.",
      "A promise of answers to age-old questions.",
      "Someone you know is supposed to have been dragged here."
    ]
  end

  def generate_reason do
    reasons = get_reasons()

    Enum.random(reasons)
  end
end

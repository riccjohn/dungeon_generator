defmodule DungeonGenerator.Occupants do
  def get_occupants do
    [
      "A vengeful cabal of undead porcelain dolls.",
      "An enormous, hovering skull with a piercing gaze.",
      "A family of 5. Desperate, hungry and afraid.",
      "Heretic cult lead by a possessed 11-year old.",
      "Desperate inquisitors dying slowly of a witch's curse.",
      "A Bark-Witch and her root-children.",
      "Dissident courtiers dedicated to the occult."
    ]
  end

  def generate_occupants do
    Enum.random(get_occupants())
  end
end

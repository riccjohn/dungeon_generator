defmodule DungeonGenerator.Guard do
  def get_guards do
    [
      "A (probably) harmless, petrified wyvern.",
      "Rows upon rows of glass statues. One is alive.",
      "Inquisitors. Possibly corrupt.",
      "A tangle of withered tendrils. They come alive!",
      "3 one-eyed scum playing dice.",
      "Graves, pits, cracks and burrows. Concealed.",
    ]
  end

  def generate_guard do
    Enum.random(get_guards())
  end
end

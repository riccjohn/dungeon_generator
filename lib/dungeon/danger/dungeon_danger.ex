defmodule DungeonGenerator.Danger do

  def get_dangers do
    [
      "A terrible, dormant curse about to be unleashed.",
      "The entire dungeon is slowly sinking.",
      "A lethal mechanism is about to activate.",
    ]
  end

  def generate_danger do
    dangers = get_dangers()

    Enum.random(dangers)
  end
end

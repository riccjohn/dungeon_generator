defmodule DungeonGenerator.Entrance do
  def get_entrances do
    [
      "The gaping mouth of a church-sized glass skull.",
    ]
  end

  def generate_entrance do
    Enum.random(get_entrances())
  end
end

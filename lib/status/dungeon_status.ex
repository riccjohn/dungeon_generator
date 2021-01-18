defmodule DungeonGenerator.Status do
  def rand_status do
    status = ['active', 'inactive']

    Enum.random(status)
  end

  def add_dungeon_status(dungeon) do
    dungeon
    |> Map.put(:status, rand_status())
  end
end

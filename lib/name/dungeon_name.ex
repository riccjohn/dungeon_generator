defmodule DungeonGenerator.Name do
  def generate_name do
    list_a = ['Wretched Shrine', 'Dismal Bridge', 'Catacomb', 'Grave', 'Vault']
    list_b = ['Repugnance', 'Kist the Unwanted', 'Antipathy', 'Mørgdal', 'Rista', 'Madness']

    a = Enum.random(list_a)
    b = Enum.random(list_b)

    "The #{a} of #{b}"
  end

  def add_dungeon_name(dungeon) do
    dungeon
    |> Map.put(:name, generate_name())
  end
end

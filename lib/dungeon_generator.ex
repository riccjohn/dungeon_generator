defmodule DungeonGenerator do
  def generate do
    dungeon = %{
      :status => nil,
      :danger => nil,
      :name => nil,
      :occupants => nil,
      :reason_to_visit => nil,
      :entrance => nil,
      :guard => nil,
      :feature => nil,
      :num_rooms => 4,
      :rooms => %{}
    }

    dungeon
    |> DungeonGenerator.Status.add_dungeon_status()
    |> DungeonGenerator.Name.add_dungeon_name()
  end
end

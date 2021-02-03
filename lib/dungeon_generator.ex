defmodule DungeonGenerator do
  @moduledoc """
  Main module to generate a dungeon
  """

  @doc """
  Generates a dungeon with all the necessary information

  ## Example
    iex> DungeonGenerator.generate
  """
  def generate do
    dungeon = %{
      :danger => nil,
      :entrance => nil,
      :feature => nil,
      :guard => nil,
      :name => nil,
      :occupants => nil,
      :reason_to_visit => nil,
      :rooms => %{},
      :status => nil
    }

    dungeon
    |> Map.put(:danger, DungeonGenerator.Danger.generate_danger())
    |> Map.put(:entrance, DungeonGenerator.Entrance.generate_entrance())
    |> Map.put(:feature, DungeonGenerator.Feature.generate_feature())
    |> Map.put(:guard, DungeonGenerator.Guard.generate_guard())
    |> Map.put(:name, DungeonGenerator.Name.generate_name())
    |> Map.put(:occupants, DungeonGenerator.Occupants.generate_occupants())
    |> Map.put(:reason_to_visit, DungeonGenerator.Reason.generate_reason())
    |> Map.put(:status, DungeonGenerator.Status.rand_status())
  end
end

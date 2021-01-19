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
    |> Map.put(:status, DungeonGenerator.Status.rand_status())
    |> Map.put(:name, DungeonGenerator.Name.generate_name())
    |> Map.put(:reason_to_visit, DungeonGenerator.Reason.generate_reason())
  end
end

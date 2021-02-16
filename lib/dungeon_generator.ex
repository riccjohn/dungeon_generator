defmodule DungeonGenerator do
  @moduledoc """
  Main module to generate a dungeon
  """

  @doc """
  Generates a dungeon with all the necessary information

  ## Example
    iex> DungeonGenerator.generate
  """
  @reasons [
    "A promise of treasure and death",
    "You are cursed. The Plague-Bearer who dwells in the dungeon can lift it, they say.",
    "Rumors of an enormous treasure, presumably cursed.",
    "A promise of answers to age-old questions.",
    "You have been sentenced to Dungeon Death. Survive and be free.",
    "A strange and hypnotic star guided you here.",
    "A promise of answers to age-old questions.",
    "Someone you know is supposed to have been dragged here."
  ]

  @inactive_status_reasons [
    "it is nearly forgotten and no one that enters may leave.",
    "the place was invaded.",
    "of the curse."
  ]

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
    |> Map.put(:reason_to_visit, DungeonGenerator.generate_reason())
    |> Map.put(:status, DungeonGenerator.generate_status())
  end

  def generate_reason do
    Enum.random(@reasons)
  end

  def generate_status do
    status =
      [true, false]
      |> Enum.random()

    if status do
      "Still active"
    else
      "Inactive, because #{Enum.random(@inactive_status_reasons)}"
    end
  end
end

defmodule DungeonGenerator do
  @moduledoc """
  Main module to generate a dungeon
  """

  @doc """
  Generates a dungeon with all the necessary information

  ## Example
    iex> DungeonGenerator.generate
  """
  @features [
    "300 emaciated, mutilated prisoners.",
    "Stuck, extremely noisy doors.",
    "The infamous black salt wind.",
    "Portal to the land of the dead, soon ready.",
    "Strange bulbous flowers with angelic faces.",
    "The items found here spring to life, and try to harm their new owners."
  ]

  @guardians [
    "A (probably) harmless, petrified wyvern.",
    "Rows upon rows of glass statues. One is alive.",
    "Inquisitors. Possibly corrupt.",
    "A tangle of withered tendrils. They come alive!",
    "3 one-eyed scum playing dice.",
    "Graves, pits, cracks and burrows. Concealed."
  ]

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

  @occupants [
    "A vengeful cabal of undead porcelain dolls.",
    "An enormous, hovering skull with a piercing gaze.",
    "A family of 5. Desperate, hungry and afraid.",
    "Heretic cult lead by a possessed 11-year old.",
    "Desperate inquisitors dying slowly of a witch's curse.",
    "A Bark-Witch and her root-children.",
    "Dissident courtiers dedicated to the occult."
  ]

  def generate do
    dungeon = %{
      :danger => nil,
      :entrance => nil,
      :feature => nil,
      :guardian => nil,
      :name => nil,
      :occupants => nil,
      :reason_to_visit => nil,
      :rooms => %{},
      :status => nil
    }

    dungeon
    |> Map.put(:danger, DungeonGenerator.Danger.generate_danger())
    |> Map.put(:entrance, DungeonGenerator.Entrance.generate_entrance())
    |> Map.put(:feature, generate_feature())
    |> Map.put(:guardian, generate_guardian())
    |> Map.put(:name, DungeonGenerator.Name.generate_name())
    |> Map.put(:occupants, generate_occupants())
    |> Map.put(:reason_to_visit, generate_reason())
    |> Map.put(:status, generate_status())
  end

  def generate_feature do
    Enum.random(@features)
  end

  def generate_guardian do
    Enum.random(@guardians)
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

  def generate_occupants do
    Enum.random(@occupants)
  end
end

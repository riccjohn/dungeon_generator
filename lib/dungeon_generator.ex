defmodule DungeonGenerator do
  @moduledoc """
  Main module to generate a dungeon
  """

  @doc """
  Generates a dungeon with all the necessary information

  ## Example
    iex> DungeonGenerator.generate
  """
  @dangers [
    "A terrible, dormant curse about to be unleashed.",
    "The entire dungeon is slowly sinking.",
    "A lethal mechanism is about to activate."
  ]

  @entrances [
    "The gaping mouth of a church-sized glass skull.",
    "An inverted church. The climb to the door is perilous.",
    "A gate between cracked ice on the Kergüs waste.",
    "Blackened cliffside gate just above Lake Onda's surface.",
    "A circle of obelisks. A hole in the ground.",
    "A gate inside a sarcophagus in Graven-Tosk.",
    "An impossibly large door.",
    "Seven dead trees in The Valley of the Unfortunate Undead surround a simple door."
  ]

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
    |> Map.put(:danger, generate_danger())
    |> Map.put(:entrance, generate_entrance())
    |> Map.put(:feature, generate_feature())
    |> Map.put(:guardian, generate_guardian())
    |> Map.put(:name, DungeonGenerator.Name.generate_name())
    |> Map.put(:occupants, generate_occupants())
    |> Map.put(:reason_to_visit, generate_reason())
    |> Map.put(:rooms, generate_rooms())
    |> Map.put(:status, generate_status())
  end

  def generate_danger do
    Enum.random(@dangers)
  end

  def generate_entrance do
    Enum.random(@entrances)
  end

  def generate_feature do
    Enum.random(@features)
  end

  def generate_guardian do
    Enum.random(@guardians)
  end

  def generate_occupants do
    Enum.random(@occupants)
  end

  def generate_reason do
    Enum.random(@reasons)
  end

  def generate_rooms do
    num_rooms = [2, 3, 4, 5, 6]
      |> Enum.random


    rooms = for i <- 1..num_rooms, do: generate_room(i)
    rooms
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

  defp generate_room(id) do
    room_table_a = [
      "childish-inscriptions",
      "exquisite-chandeliers",
      "bloodied-beds",
      "flooded",
      "leaning",
      "upside-down-candles",
      "fire-damage",
      "black-ink",
      "torture-chamber",
      "sooty-walls",
      "freezing-draft",
      "creaking-doors",
      "compact-darkness",
      "locked-sarcophagi",
      "obscure-literature",
      "abyssal-pits",
      "whispering",
      "splattered-paint",
      "full-of-debris",
      "cracked-sacrificial-altar",
      "throne-remains",
      "smoke-filled",
      "bonfire",
      "piles-of-feathers",
      "hypnotic-inscriptions",
      "terrifying-inscriptions",
      "teleporting-inscriptions",
      "rotting-food",
      "bloody-sacrificial-altar",
      "small-aquarium",
      "cracked-sarcophagi",
      "crawling-with-bugs",
      "weapons-and-parts",
      "tally-marks",
      "charnel-house",
      "decapitated-statue",
      "box-of-ants"
    ]
    description = Enum.random(room_table_a)
      |> String.capitalize

    room = %{ id: id, description: description }

    room
  end
end

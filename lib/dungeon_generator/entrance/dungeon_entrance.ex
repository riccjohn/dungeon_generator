defmodule DungeonGenerator.Entrance do
  use Ecto.Schema

  schema "entrances" do
    field(:text, :string)
  end

  def changeset(entrance, params \\ %{}) do
    entrance
    |> Ecto.Changeset.cast(params, [:text])
    |> Ecto.Changeset.validate_required([:text])
  end

  def get_entrances do
    [
      "The gaping mouth of a church-sized glass skull.",
      "An inverted church. The climb to the door is perilous.",
      "A gate between cracked ice on the Kergüs waste.",
      "Blackened cliffside gate just above Lake Onda's surface.",
      "A circle of obelisks. A hole in the ground.",
      "A gate inside a sarcophagus in Graven-Tosk.",
      "An impossibly large door.",
      "Seven dead trees in The Valley of the Unfortunate Undead surround a simple door."
    ]
  end

  def generate_entrance do
    Enum.random(get_entrances())
  end
end

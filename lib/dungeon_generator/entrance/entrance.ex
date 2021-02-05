defmodule DungeonGenerator.Entrance do
  use Ecto.Schema

  schema "entrances" do
    field :text, :string
  end

  def changeset(entrance, params \\ %{}) do
    entrance
    |> Ecto.Changeset.cast(params, [:text])
    |> Ecto.Changeset.validate_required([:text])
  end
end

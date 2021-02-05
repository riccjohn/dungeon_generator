defmodule DungeonGenerator.Repo.Migrations.CreateEntrances do
  use Ecto.Migration

  def change do
    create table(:entrances) do
      add :text, :string
    end
  end
end

defmodule DungeonGenerator.Repo do
  use Ecto.Repo,
    otp_app: :dungeon_generator,
    adapter: Ecto.Adapters.Postgres
end

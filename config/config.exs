import Config

config :dungeon_generator, DungeonGenerator.Repo,
  database: "dungeon_generator_repo",
  username: "postgres",
  password: "postgres",
  hostname: "localhost"

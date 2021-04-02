# DungeonGenerator

[![riccjohn](https://circleci.com/gh/riccjohn/dungeon_generator.svg?style=svg)](https://app.circleci.com/pipelines/github/riccjohn/dungeon_generator)

A heavy metal dungeon generator meant to be used with [Mörk Borg](https://morkborg.com/), but is game-agnostic aside from any monster stats.

![MORK BORG logo](lib/assets/CompWith_MORKBORG_vert.svg)
## Installation

Will eventually have a full front-end, but for now:

Clone repo

```
git clone git@github.com:riccjohn/dungeon_generator.git
```

Install dependencies

```
cd dungeon_generator
mix deps.get
```

Set up database

```
mix ecto.create
```

Run database migrations

```
mix ecto.migrate
```

Start an elixir repl and start generating dungeons

```
iex -S mix
DungeonGenerator.generate
```

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `dungeon_generator` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:dungeon_generator, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/dungeon_generator](https://hexdocs.pm/dungeon_generator).


_Dungeon Generator is an independent production by John Riccardi and is not affiliated with Ockult Örtmästare Games or Stockholm Kartell. It is published under the MÖRK BORG Third Party License._

_MÖRK BORG is copyright Ockult Örtmästare Games and Stockholm Kartell._

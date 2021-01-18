defmodule DungeonGeneratorTest do
  use ExUnit.Case
  doctest DungeonGenerator

  test "greets the world" do
    assert DungeonGenerator.hello() == :world
  end
end

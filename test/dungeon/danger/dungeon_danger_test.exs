defmodule DungeonGeneratorTest.Danger do
  use ExUnit.Case
  doctest DungeonGenerator.Danger

  test "generate_danger" do
    danger = DungeonGenerator.Danger.generate_danger()
    assert danger
  end
end

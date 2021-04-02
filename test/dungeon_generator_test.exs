import DungeonGenerator

defmodule DungeonGeneratorTest do
  use ExUnit.Case
  doctest DungeonGenerator

  describe "generate()" do
    test "returns a map" do
      dungeon = generate()
      assert Kernel.is_map(dungeon)
    end

    test "returns a map with the expected keys" do
      dungeon_keys = generate() |> Map.keys
      expected_keys = [
        :danger,
        :entrance,
        :feature,
        :guardian,
        :name,
        :occupants,
        :reason_to_visit,
        :rooms,
        :status,
      ]

      assert dungeon_keys === expected_keys
    end

    test "contains values for the expected keys" do
      dungeon = generate()

      expected_keys = [
        :danger,
        :entrance,
        :feature,
        :guardian,
        :name,
        :occupants,
        :reason_to_visit,
        :rooms,
        :status,
      ]

      Enum.each(expected_keys, fn key ->
        assert dungeon[key]
      end)
    end
  end

  describe "generate_danger()" do
    test "returns a danger" do
      assert generate_danger()
    end
  end

  describe "generate_entrance()" do
    test "returns an entrance" do
      assert generate_entrance()
    end
  end

  describe "generate_feature()" do
    test "returns a feature" do
      assert generate_feature()
    end
  end

  describe "generate_occupants()" do
    test "returns occupants" do
      assert generate_occupants()
    end
  end

  describe "generate_reason()" do
    test "generates a reason" do
      assert generate_reason()
    end
  end

  describe "generate_rooms()" do
    test "generates a list of rooms" do
      rooms = generate_rooms(2, 6)

      Enum.each(rooms, fn x ->
        assert x.id
        assert x.description
      end)
    end

    test "generates between the given min and max number of rooms, inclusive" do
      min = 2
      max = 6
      rooms = generate_rooms(min, max)
      assert Enum.count(rooms) >= min && Enum.count(rooms) <= max
    end

    test "raises an error if the min is larger than max" do
      assert_raise(ArgumentError, "Min value must be lower than max value", fn ->
        generate_rooms(10, 1)
      end)
    end
  end

  describe "generate_status()" do
    test "generates a status" do
      assert generate_status()
    end
  end
end

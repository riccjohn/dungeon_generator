defmodule DungeonGenerator.Feature do
  def get_features do
    [
      "300 emaciated, mutilated prisoners.",
      "Stuck, extremely noisy doors.",
      "The infamous black salt wind.",
      "Portal to the land of the dead, soon ready.",
      "Strange bulbous flowers with angelic faces.",
      "The items found here spring to life, and try to harm their new owners.",
    ]
  end

  def generate_feature do
    Enum.random(get_features())
  end
end

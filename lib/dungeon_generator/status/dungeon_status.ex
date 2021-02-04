defmodule DungeonGenerator.Status do
  def reasons do
    [
      "it is nearly forgotten and no one that enters may leave.",
      "the place was invaded.",
      "of the curse."
    ]
  end

  def rand_status do
    status = [true, false]
    status = Enum.random(status)

    if status do
      "Still active"
    else
      "Inactive, because #{Enum.random(reasons())}"
    end
  end
end

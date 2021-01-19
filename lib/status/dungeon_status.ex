defmodule DungeonGenerator.Status do
  def rand_status do
    status = [true, false]

    reasons = [
      "because it is nearly forgotten and no one that enters may leave.",
      "because the place was invaded.",
      "because of the curse."
    ]

    status = Enum.random(status)

    if status do
      "Still active"
    else
      "Inactive, because #{Enum.random(reasons)}"
    end
  end
end

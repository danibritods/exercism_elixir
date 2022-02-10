defmodule KitchenCalculator do
  def get_volume({_unit,volume}), do: volume

  def to_milliliter(volume_pair) do
    case volume_pair do
      {:cup,x}         -> {:milliliter,240*x}
      {:fluid_ounce,x} -> {:milliliter,30*x}
      {:teaspoon,x}    -> {:milliliter,5*x}
      {:tablespoon,x}  -> {:milliliter,15*x}
      {:milliliter,x}  -> {:milliliter,x}
    end
  end
  def from_milliliter(volume_pair, unit) do
    volume = get_volume(volume_pair)
    case {unit,volume} do
      {:cup,x}         -> {:cup,x/240}
      {:fluid_ounce,x} -> {:fluid_ounce,x/30}
      {:teaspoon,x}    -> {:teaspoon,x/5}
      {:tablespoon,x}  -> {:tablespoon,x/15}
      {:milliliter,x}  -> {:milliliter,x}                                             
    end
  end
  def convert(volume_pair, unit) do
    volume_pair |> to_milliliter |> from_milliliter(unit)
  end
end

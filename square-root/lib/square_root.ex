defmodule SquareRoot do
  @doc """
  Calculate the integer square root of a positive integer

  This is probabbly the silliest method. 
  """
  @spec calculate(radicand :: pos_integer) :: pos_integer
  def calculate(radicand) do
    try(radicand,1)
  end
 defp try(radicand, root) do
    r2 = root * root
    cond do
      r2 == radicand -> root 
      r2 < radicand -> try(radicand, root + 1)
      r2 > radicand -> root - 1    
    end
  end
end

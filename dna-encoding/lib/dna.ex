defmodule DNA do
  @nucleic_tuple [{?\s, 0b0000},
                      {?A , 0b0001},
                      {?C , 0b0010},
                      {?G , 0b0100},
                      {?T , 0b1000}]

  def encode_nucleotide(code_point) do
    #@nucleic_map[code_point]
    Enum.find(@nucleic_tuple,
     fn {key, _val} -> key == code_point end)
    |> elem(1)
  end
  def decode_nucleotide(encoded_code) do
    Enum.find(@nucleic_tuple,
     fn {_key, val} -> val == encoded_code end)
    |> elem(0)
  end
  def encode(dna) do
    # Please implement the encode/1 function
  end

  def decode(dna) do
    # Please implement the decode/1 function
  end
end

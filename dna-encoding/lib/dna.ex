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

  #def encode(dna), do: do_enconde(dna,<<>>)

  def encode(dna_char), do: do_encode(dna_char)#,<<>>)

  defp do_encode(''), do: <<>>
  defp do_encode([h | t]) do
    <<encode_nucleotide(h)::4, do_encode(t)::bitstring>>
  end

  def decode(dna_bit), do: do_decode(dna_bit)

  defp do_decode(<<>>), do: ''
  defp do_decode(<<h::4,t::bitstring>>) do
    [decode_nucleotide(h) | do_decode(t)]
  end
end

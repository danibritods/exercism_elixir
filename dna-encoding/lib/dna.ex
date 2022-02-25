defmodule DNA do
  @nucleic_acid_code %{?\s => 0b0000,
                      ?A => 0b0001,
                      ?C => 0b0010,
                      ?G => 0b0100,
                      ?T => 0b1000}
  def encode_nucleotide(code_point) do
    @nucleic_acid_code[code_point]
  end
  def decode_nucleotide(encoded_code) do
    # Please implement the decode_nucleotide/1 function
  end

  def encode(dna) do
    # Please implement the encode/1 function
  end

  def decode(dna) do
    # Please implement the decode/1 function
  end
end

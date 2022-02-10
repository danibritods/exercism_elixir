defmodule Username do
  defp clean(h) do 
    case h do 
      #h when h in [?a..?z] -> h
      #h when h in ['a'..'z'] -> h
      h when h >= ?a and h <= ?z -> [h]
      #'ä' -> 'ae'
      ?ä -> 'ae'
      ?ö -> 'oe'
      ?ü -> 'ue'
      ?ß -> 'ss'
      ?_ -> '_'
       _ -> ''
    end
  end
  def sanitize([]),do: []
  def sanitize([h | t]) do 
    clean(h) ++ sanitize(t)
  end
end

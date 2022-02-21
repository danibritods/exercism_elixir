defmodule NameBadge do
  defp get_id(id),do:
    if id, do: "[#{id}] - ", else: ""
  defp get_department(department),do:
    if department, do: " - #{String.upcase(department)}", else: " - OWNER"
  def print(id, name, department) do
    get_id(id)<>name<>get_department(department)
  end
end

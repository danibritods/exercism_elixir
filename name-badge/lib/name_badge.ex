defmodule NameBadge do
  def print(id, name, _department) when _department == nil do
    if id do
      "[#{id}] - #{name} - OWNER"
    else
      "#{name} - OWNER"
    end
  end
  def print(_id, name, department) when _id == nil do
    "#{name} - #{String.upcase(department)}"
  end
  def print(id, name, department) do
    "[#{id}] - #{name} - #{String.upcase(department)}"
  end
end

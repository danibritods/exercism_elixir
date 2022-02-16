defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name 
    |> String.trim_leading 
    |> String.first 
  end

  def initial(name) do
    name |> first_letter |> String.upcase() |> Kernel.<>(".")
  end

  def initials(full_name) do
    full_name 
    |> String.split 
    |> Enum.map(&(initial(&1))) 
    |> Enum.join(" ")
    
  end

  def pair(full_name1, full_name2) do
    {n1, n2} = {initials(full_name1),initials(full_name2)}
    #x = "**     #{n1}  +  #{n2}     **"
    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{n1}  +  #{n2}     **
     **                       **
       **                   **
         **               **
           **           **
             **       **
               **   **
                 ***
                  *
    """

  end
end

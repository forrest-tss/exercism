defmodule HighSchoolSweetheart do
  def first_letter(name) do
    name |> String.trim() |> String.first()
  end

  def initial(name) do
    name
    |> first_letter()
    |> String.upcase()
    |> then(&(&1 <> "."))
  end

  def initials(full_name) do
    full_name
    |> String.split(~r(\s), trim: true)
    |> Enum.map_join(" ", &initial/1)
  end

  def pair(full_name1, full_name2) do
    print_couple = "#{initials(full_name1)}  +  #{initials(full_name2)}"

    """
         ******       ******
       **      **   **      **
     **         ** **         **
    **            *            **
    **                         **
    **     #{print_couple}     **
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

defmodule LanguageList do
  def new(), do: []

  def add(list, language), do: [language | list]

  def remove([_hd | list]), do: list

  def first([language | _tl]), do: language

  def count(list), do: length(list)

  def functional_list?(list), do: "Elixir" in list
end

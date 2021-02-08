defmodule SylhetiBackendWeb.Resolvers.Words do

  alias SylhetiBackend.{Repo, Words.Word, Words.Wordlink}

  def list_words(_parents, _args, _resolution) do
    {:ok, SylhetiBackend.Words.list_words()}
  end

  def list_wordlinks(_parents, _args, _resolution) do
    {:ok, SylhetiBackend.Words.list_wordlinks()}
  end

  def get_word(_parents, %{id: id}, _resolution) do
    found_word = Repo.get(Word, id) |> Repo.preload([:wordlinks, :word2_of])
    case found_word do
      nil ->
        {:error, "word not found"}
      word ->
        {:ok, word}
    end
  end

  def get_wordlink(_parents, %{id: id}, _resolution) do
    found_wordlink = Repo.get(Wordlink, id) |> Repo.preload([:word1, :word2])
    case found_wordlink do
      nil ->
        {:error, "wordlink not found"}
      wordlink ->
        {:ok, wordlink}
    end
  end

  def search_words(_parents, %{query: query}, _resolution) do
    {:ok, SylhetiBackend.Words.search_words(query)}
  end
end

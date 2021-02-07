defmodule SylhetiBackendWeb.Resolvers.Words do

  alias SylhetiBackend.{Repo, Words.Word}

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




end

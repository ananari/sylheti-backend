defmodule SylhetiBackendWeb.Resolvers.Words do

  def list_words(_parents, _args, _resolution) do
    {:ok, SylhetiBackend.Words.list_words()}
  end

  def list_wordlinks(_parents, _args, _resolution) do
    {:ok, SylhetiBackend.Words.list_wordlinks()}
  end

  def get_word(_parents, %{id: id}, _resolution) do
    case SylhetiBackend.Repo.get(SylhetiBackend.Words.Word, id) do
      nil ->
        {:error, "word not found"}
      word ->
        {:ok, word}
    end
  end




end

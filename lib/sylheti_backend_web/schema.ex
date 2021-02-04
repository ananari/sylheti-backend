defmodule SylhetiBackend.Schema do
  use Absinthe.Schema

  import_types SylhetiBackend.Schema.DataTypes

  query do
    @desc "get a list of words"
    field :words, list_of(:word) do
      resolve fn _parent, _args, _resolution ->
        {:ok, SylhetiBackend.Words.list_words()}
      end
    end

    @desc "get a list of wordlinks"
    field :wordlinks, list_of(:wordlink) do
      resolve fn _parent, _args, _resolution ->
        {:ok, SylhetiBackend.Words.list_wordlinks()}
      end
    end
  end

end

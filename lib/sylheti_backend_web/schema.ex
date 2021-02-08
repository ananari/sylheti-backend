defmodule SylhetiBackend.Schema do
  use Absinthe.Schema

  import_types SylhetiBackend.Schema.DataTypes

  query do
    @desc "get a list of words"
    field :words, list_of(:word) do
      resolve &SylhetiBackendWeb.Resolvers.Words.list_words/3
    end

    @desc "get a list of wordlinks"
    field :wordlinks, list_of(:wordlink) do
      resolve &SylhetiBackendWeb.Resolvers.Words.list_wordlinks/3
    end

    @desc "get a word by id"
    field :word, :word do
      arg :id, non_null(:id)
      resolve &SylhetiBackendWeb.Resolvers.Words.get_word/3
    end

    field :wordlink, :wordlink do
      arg :id, non_null(:id)
      resolve &SylhetiBackendWeb.Resolvers.Words.get_wordlink/3
    end

    @desc "search for a word by its sylheti ipa lexeme"
    field :search_words, list_of(:word) do
      arg :query, non_null(:string)
      resolve &SylhetiBackendWeb.Resolvers.Words.search_words/3
    end

  end

end

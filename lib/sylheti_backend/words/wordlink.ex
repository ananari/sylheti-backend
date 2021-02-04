defmodule SylhetiBackend.Words.Wordlink do
  use Ecto.Schema
  import Ecto.Changeset

  schema "wordlinks" do
    field :type, :string
    belongs_to :word1, SylhetiBackend.Words.Word, type: :string
    belongs_to :word2, SylhetiBackend.Words.Word, type: :string

    timestamps()
  end

  @doc false
  def changeset(wordlink, attrs) do
    wordlink
    |> cast(attrs, [:type])
  end
end

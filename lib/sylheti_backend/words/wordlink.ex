defmodule SylhetiBackend.Words.Wordlink do
  use Ecto.Schema
  import Ecto.Changeset

  schema "wordlinks" do
    field :type, :string
    belongs_to :word1, SylhetiBackend.Words.Word, type: :string, foreign_key: :word1_id
    belongs_to :word2, SylhetiBackend.Words.Word, type: :string, foreign_key: :word2_id

    timestamps()
  end

  @doc false
  def changeset(wordlink, attrs) do
    wordlink
    |> cast(attrs, [:type, :word1_id, :word2_id])
  end
end

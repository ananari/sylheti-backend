defmodule SylhetiBackend.Words.Word do
  use Ecto.Schema
  import Ecto.Changeset

  schema "words" do
    field :bengEq, :string
    field :bengRep, :string
    field :definition, :string
    field :etymology, :string
    field :flexId, :string
    field :ipaLexeme, :string
    field :pos, :string
    field :sylRep, :string

    timestamps()
  end

  @doc false
  def changeset(word, attrs) do
    word
    |> cast(attrs, [:ipaLexeme, :pos, :etymology, :definition, :flexId, :bengEq, :bengRep, :sylRep])
    |> validate_required([:flexId])
    |> unique_constraint(:flexId)
  end
end

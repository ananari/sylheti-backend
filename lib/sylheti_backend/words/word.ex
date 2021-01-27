defmodule SylhetiBackend.Words.Word do
  use Ecto.Schema
  import Ecto.Changeset

  schema "words" do
    field :beng_eq, :string
    field :beng_rep, :string
    field :definition, :string
    field :etymology, :string
    field :flex_id, :string
    field :ipa, :string
    field :pos, :string
    field :syl_rep, :string

    timestamps()
  end

  @doc false
  def changeset(word, attrs) do
    word
    |> cast(attrs, [:ipa, :pos, :etymology, :definition, :flex_id, :beng_eq, :beng_rep, :syl_rep])
    |> validate_required([:flex_id])
    |> unique_constraint(:flex_id)
  end
end

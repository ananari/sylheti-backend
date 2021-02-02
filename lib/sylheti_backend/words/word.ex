defmodule SylhetiBackend.Words.Word do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:flex_id, :string, []}
  @derive {Phoenix.Param, key: :flex_id}
  schema "words" do
    field :beng_eq, :string
    field :beng_rep, :string
    field :definition, :string
    field :etymology, :string
    field :ipa, :string
    field :pos, :string
    field :syl_rep, :string

    timestamps()
  end

  @doc false
  def changeset(word, attrs) do
    word
    |> cast(attrs, [:flex_id, :ipa, :pos, :etymology, :definition, :beng_eq, :beng_rep, :syl_rep])
  end
end

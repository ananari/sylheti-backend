defmodule SylhetiBackend.Examples.Sentence do
  use Ecto.Schema
  import Ecto.Changeset

  schema "sentences" do
    field :body, :string
    field :translation, :string
    field :beng_rep, :string
    field :syl_rep, :string

    timestamps()
  end

  @doc false
  def changeset(sentence, attrs) do
    sentence
    |> cast(attrs, [:body, :translation, :beng_rep, :syl_rep])
    |> validate_required([:body])
    |> unique_constraint([:body])
  end
end

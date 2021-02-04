defmodule SylhetiBackend.Words.Word do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :string, []}
  @derive {Phoenix.Param, key: :id}
  schema "words" do
    field :beng_eq, :string
    field :beng_rep, :string
    field :definition, :string
    field :etymology, :string
    field :ipa, :string
    field :pos, :string
    field :syl_rep, :string
    many_to_many :word1_of, SylhetiBackend.Words.Word, join_through: "wordlinks", join_keys: [word1_id: :id, word2_id: :id]
    many_to_many :word2_of, SylhetiBackend.Words.Word, join_through: "wordlinks", join_keys: [word2_id: :id, word1_id: :id]


    timestamps()
  end

  @doc false
  def changeset(word, attrs) do
    word
    |> cast(attrs, [:id, :ipa, :pos, :etymology, :definition, :beng_eq, :beng_rep, :syl_rep])
  end
end

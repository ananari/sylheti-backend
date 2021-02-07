defmodule SylhetiBackend.Schema.DataTypes do
  use Absinthe.Schema.Notation

  object :word do
    field :id, :string
    field :beng_eq, :string
    field :beng_rep, :string
    field :definition, :string
    field :etymology, :string
    field :ipa, :string
    field :pos, :string
    field :syl_rep, :string
    field :wordlinks, list_of(:wordlink)
    field :word2, list_of(:word)
  end

  object :wordlink do
    field :id, :id
    field :word1_id, :string
    field :word2_id, :string
    field :type, :string
    field :word1, :word
    field :word2, :word
  end

end

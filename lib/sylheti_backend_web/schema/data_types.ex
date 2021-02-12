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
    field :is_affix, :boolean
    field :wordlinks, list_of(:wordlink)
    field :word2_of, list_of(:word)
  end

  object :wordlink do
    field :id, :id
    field :word1_id, :string
    field :word2_id, :string
    field :type, :string
    field :word1, :word
    field :word2, :word
  end

  object :sentence do
    field :id, :id
    field :body, :string
    field :translation, :string
    field :beng_rep, :string
    field :syl_rep, :string
  end

  object :wordsentence do
    field :id, :id
    field :word_id, :string
    field :sentence_id, :integer
  end

end

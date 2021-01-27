defmodule SylhetiBackend.Schema.DataTypes do
  use Absinthe.Schema.Notation

  object :word do
    field :id, :id
    field :beng_eq, :string
    field :beng_rep, :string
    field :definition, :string
    field :etymology, :string
    field :flex_id, :string
    field :ipa, :string
    field :pos, :string
    field :syl_rep, :string
  end

end

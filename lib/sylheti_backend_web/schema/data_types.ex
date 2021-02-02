defmodule SylhetiBackend.Schema.DataTypes do
  use Absinthe.Schema.Notation

  object :word do
    field :flex_id, :string
    field :beng_eq, :string
    field :beng_rep, :string
    field :definition, :string
    field :etymology, :string
    field :ipa, :string
    field :pos, :string
    field :syl_rep, :string
  end

end

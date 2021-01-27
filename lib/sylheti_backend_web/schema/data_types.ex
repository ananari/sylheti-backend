defmodule SylhetiBackend.Schema.DataTypes do
  use Absinthe.Schema.Notation

  object :word do
    field :id, :id
    field :bengEq, :string
    field :bengRep, :string
    field :definition, :string
    field :etymology, :string
    field :flexId, :string
    field :ipaLexeme, :string
    field :pos, :string
    field :sylRep, :string
  end

end

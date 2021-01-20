defmodule SylhetiBackend.Repo.Migrations.CreateWords do
  use Ecto.Migration

  def change do
    create table(:words) do
      add :ipaLexeme, :string
      add :pos, :string
      add :etymology, :string
      add :definition, :string
      add :flexId, :string
      add :bengEq, :string
      add :bengRep, :string
      add :sylRep, :string

      timestamps()
    end

    create(unique_index(:words, [:flexId]))

  end
end

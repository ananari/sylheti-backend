defmodule SylhetiBackend.Repo.Migrations.CreateWordlinks do
  use Ecto.Migration

  def change do
    create table(:wordlinks) do
      add :type, :string, default: "unspecified variant"
      add :word1_id, references(:words, on_delete: :nothing, type: :string)
      add :word2_id, references(:words, on_delete: :nothing, type: :string)

      timestamps()
    end

    create index(:wordlinks, [:word1_id])
    create index(:wordlinks, [:word2_id])
  end
end

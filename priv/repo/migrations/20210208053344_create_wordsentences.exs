defmodule SylhetiBackend.Repo.Migrations.CreateWordsentences do
  use Ecto.Migration

  def change do
    create table(:wordsentences) do
      add :word_id, references(:words, on_delete: :nothing, type: :string)
      add :sentence_id, references(:sentences, on_delete: :nothing)

      timestamps()
    end

    create index(:wordsentences, [:word_id])
    create index(:wordsentences, [:sentence_id])
  end
end

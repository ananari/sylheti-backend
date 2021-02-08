defmodule SylhetiBackend.Repo.Migrations.CreateSentences do
  use Ecto.Migration

  def change do
    create table(:sentences) do
      add :body, :string
      add :translation, :string
      add :beng_rep, :string
      add :syl_rep, :string

      timestamps()

    end

    create unique_index(:sentences, [:body])

  end
end

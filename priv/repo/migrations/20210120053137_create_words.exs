defmodule SylhetiBackend.Repo.Migrations.CreateWords do
  use Ecto.Migration

  def change do
    create table(:words) do
      add :ipa, :string
      add :pos, :string
      add :etymology, :string
      add :definition, :string
      add :flex_id, :string
      add :beng_eq, :string
      add :beng_rep, :string
      add :syl_rep, :string

      timestamps()
    end

    create(unique_index(:words, [:flex_id]))

  end
end

defmodule SylhetiBackend.Repo.Migrations.CreateWords do
  use Ecto.Migration

  def change do
    create table(:words, primary_key: false) do
      add :flex_id, :string, primary_key: true
      add :ipa, :string
      add :pos, :string
      add :etymology, :string
      add :definition, :string
      add :beng_eq, :string
      add :beng_rep, :string
      add :syl_rep, :string

      timestamps()
    end
  end
end

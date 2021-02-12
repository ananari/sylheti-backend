defmodule SylhetiBackend.Repo.Migrations.AddIsaffixToWords do
  use Ecto.Migration

  def change do
    alter table(:words) do
      add :is_affix, :boolean, null: false, default: false
    end
  end
end

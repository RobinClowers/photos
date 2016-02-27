defmodule Photos.Repo.Migrations.CreatePhoto do
  use Ecto.Migration

  def change do
    create table(:photos) do
      add :filename, :string
      add :path, :string
      add :caption, :text
      add :versions, {:array, :string}
      add :album_id, references(:albums, on_delete: :nothing)

      timestamps
    end
    create index(:photos, [:album_id])

  end
end

defmodule Photos.Repo.Migrations.CreateAlbum do
  use Ecto.Migration

  def change do
    create table(:albums) do
      add :title, :string
      add :slug, :string
      add :cover_photo_id, :integer
      add :published_at, :datetime

      timestamps
    end

  end
end

defmodule Photos.Album do
  use Photos.Web, :model

  schema "albums" do
    field :title, :string
    field :slug, :string
    field :cover_photo_id, :integer
    field :published_at, Ecto.DateTime

    timestamps
  end

  @required_fields ~w(title slug published_at)
  @optional_fields ~w(cover_photo_id )

  @doc """
  Creates a changeset based on the `model` and `params`.

  If no params are provided, an invalid changeset is returned
  with no validation performed.
  """
  def changeset(model, params \\ :empty) do
    model
    |> cast(params, @required_fields, @optional_fields)
  end
end

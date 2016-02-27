defmodule Photos.Photo do
  use Photos.Web, :model

  schema "photos" do
    field :filename, :string
    field :path, :string
    field :caption, :string
    field :versions, {:array, :string}
    belongs_to :album, Photos.Album

    timestamps
  end

  @required_fields ~w(filename path caption versions)
  @optional_fields ~w()

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

defmodule Photos.PhotoTest do
  use Photos.ModelCase

  alias Photos.Photo

  @valid_attrs %{caption: "some content", filename: "some content", path: "some content", versions: []}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Photo.changeset(%Photo{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Photo.changeset(%Photo{}, @invalid_attrs)
    refute changeset.valid?
  end
end

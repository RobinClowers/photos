defmodule Photos.AlbumTest do
  use Photos.ModelCase

  alias Photos.Album

  @valid_attrs %{cover_photo_id: 42, published_at: "2010-04-17 14:00:00", slug: "some content", title: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Album.changeset(%Album{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Album.changeset(%Album{}, @invalid_attrs)
    refute changeset.valid?
  end
end

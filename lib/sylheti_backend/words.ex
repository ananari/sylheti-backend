defmodule SylhetiBackend.Words do
  @moduledoc """
  The Words context.
  """

  import Ecto.Query, warn: false
  alias SylhetiBackend.Repo

  alias SylhetiBackend.Words.Word

  @doc """
  Returns the list of words.

  ## Examples

      iex> list_words()
      [%Word{}, ...]

  """
  def list_words do
    Repo.all(Word)
  end

  @doc """
  Gets a single word.

  Raises `Ecto.NoResultsError` if the Word does not exist.

  ## Examples

      iex> get_word!(123)
      %Word{}

      iex> get_word!(456)
      ** (Ecto.NoResultsError)

  """
  def get_word!(id), do: Repo.get!(Word, id)

  @doc """
  Creates a word.

  ## Examples

      iex> create_word(%{field: value})
      {:ok, %Word{}}

      iex> create_word(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_word(attrs \\ %{}) do
    %Word{}
    |> Word.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a word.

  ## Examples

      iex> update_word(word, %{field: new_value})
      {:ok, %Word{}}

      iex> update_word(word, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_word(%Word{} = word, attrs) do
    word
    |> Word.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a word.

  ## Examples

      iex> delete_word(word)
      {:ok, %Word{}}

      iex> delete_word(word)
      {:error, %Ecto.Changeset{}}

  """
  def delete_word(%Word{} = word) do
    Repo.delete(word)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking word changes.

  ## Examples

      iex> change_word(word)
      %Ecto.Changeset{data: %Word{}}

  """
  def change_word(%Word{} = word, attrs \\ %{}) do
    Word.changeset(word, attrs)
  end

  alias SylhetiBackend.Words.Wordlink

  @doc """
  Returns the list of wordlinks.

  ## Examples

      iex> list_wordlinks()
      [%Wordlink{}, ...]

  """
  def list_wordlinks do
    Repo.all(Wordlink)
  end

  @doc """
  Gets a single wordlink.

  Raises `Ecto.NoResultsError` if the Wordlink does not exist.

  ## Examples

      iex> get_wordlink!(123)
      %Wordlink{}

      iex> get_wordlink!(456)
      ** (Ecto.NoResultsError)

  """
  def get_wordlink!(id), do: Repo.get!(Wordlink, id)

  @doc """
  Creates a wordlink.

  ## Examples

      iex> create_wordlink(%{field: value})
      {:ok, %Wordlink{}}

      iex> create_wordlink(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_wordlink(attrs \\ %{}) do
    %Wordlink{}
    |> Wordlink.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a wordlink.

  ## Examples

      iex> update_wordlink(wordlink, %{field: new_value})
      {:ok, %Wordlink{}}

      iex> update_wordlink(wordlink, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_wordlink(%Wordlink{} = wordlink, attrs) do
    wordlink
    |> Wordlink.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a wordlink.

  ## Examples

      iex> delete_wordlink(wordlink)
      {:ok, %Wordlink{}}

      iex> delete_wordlink(wordlink)
      {:error, %Ecto.Changeset{}}

  """
  def delete_wordlink(%Wordlink{} = wordlink) do
    Repo.delete(wordlink)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking wordlink changes.

  ## Examples

      iex> change_wordlink(wordlink)
      %Ecto.Changeset{data: %Wordlink{}}

  """
  def change_wordlink(%Wordlink{} = wordlink, attrs \\ %{}) do
    Wordlink.changeset(wordlink, attrs)
  end
end

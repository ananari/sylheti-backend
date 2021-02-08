defmodule SylhetiBackend.Examples do
  @moduledoc """
  The Examples context.
  """

  import Ecto.Query, warn: false
  alias SylhetiBackend.Repo

  alias SylhetiBackend.Examples.Sentence

  @doc """
  Returns the list of sentences.

  ## Examples

      iex> list_sentences()
      [%Sentence{}, ...]

  """
  def list_sentences do
    Repo.all(Sentence)
  end

  @doc """
  Gets a single sentence.

  Raises `Ecto.NoResultsError` if the Sentence does not exist.

  ## Examples

      iex> get_sentence!(123)
      %Sentence{}

      iex> get_sentence!(456)
      ** (Ecto.NoResultsError)

  """
  def get_sentence!(id), do: Repo.get!(Sentence, id)

  @doc """
  Creates a sentence.

  ## Examples

      iex> create_sentence(%{field: value})
      {:ok, %Sentence{}}

      iex> create_sentence(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_sentence(attrs \\ %{}) do
    %Sentence{}
    |> Sentence.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a sentence.

  ## Examples

      iex> update_sentence(sentence, %{field: new_value})
      {:ok, %Sentence{}}

      iex> update_sentence(sentence, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_sentence(%Sentence{} = sentence, attrs) do
    sentence
    |> Sentence.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a sentence.

  ## Examples

      iex> delete_sentence(sentence)
      {:ok, %Sentence{}}

      iex> delete_sentence(sentence)
      {:error, %Ecto.Changeset{}}

  """
  def delete_sentence(%Sentence{} = sentence) do
    Repo.delete(sentence)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking sentence changes.

  ## Examples

      iex> change_sentence(sentence)
      %Ecto.Changeset{data: %Sentence{}}

  """
  def change_sentence(%Sentence{} = sentence, attrs \\ %{}) do
    Sentence.changeset(sentence, attrs)
  end

  alias SylhetiBackend.Examples.WordSentence

  @doc """
  Returns the list of wordsentences.

  ## Examples

      iex> list_wordsentences()
      [%WordSentence{}, ...]

  """
  def list_wordsentences do
    Repo.all(WordSentence)
  end

  @doc """
  Gets a single word_sentence.

  Raises `Ecto.NoResultsError` if the Word sentence does not exist.

  ## Examples

      iex> get_word_sentence!(123)
      %WordSentence{}

      iex> get_word_sentence!(456)
      ** (Ecto.NoResultsError)

  """
  def get_word_sentence!(id), do: Repo.get!(WordSentence, id)

  @doc """
  Creates a word_sentence.

  ## Examples

      iex> create_word_sentence(%{field: value})
      {:ok, %WordSentence{}}

      iex> create_word_sentence(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_word_sentence(attrs \\ %{}) do
    %WordSentence{}
    |> WordSentence.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a word_sentence.

  ## Examples

      iex> update_word_sentence(word_sentence, %{field: new_value})
      {:ok, %WordSentence{}}

      iex> update_word_sentence(word_sentence, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_word_sentence(%WordSentence{} = word_sentence, attrs) do
    word_sentence
    |> WordSentence.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a word_sentence.

  ## Examples

      iex> delete_word_sentence(word_sentence)
      {:ok, %WordSentence{}}

      iex> delete_word_sentence(word_sentence)
      {:error, %Ecto.Changeset{}}

  """
  def delete_word_sentence(%WordSentence{} = word_sentence) do
    Repo.delete(word_sentence)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking word_sentence changes.

  ## Examples

      iex> change_word_sentence(word_sentence)
      %Ecto.Changeset{data: %WordSentence{}}

  """
  def change_word_sentence(%WordSentence{} = word_sentence, attrs \\ %{}) do
    WordSentence.changeset(word_sentence, attrs)
  end
end

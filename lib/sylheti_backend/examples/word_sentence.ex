defmodule SylhetiBackend.Examples.WordSentence do
  use Ecto.Schema
  import Ecto.Changeset

  schema "wordsentences" do
    belongs_to :word, SylhetiBackend.Words.Word, type: :string
    belongs_to :sentence, SylhetiBackend.Examples.Sentence

    timestamps()
  end

  @doc false
  def changeset(word_sentence, attrs) do
    word_sentence
    |> cast(attrs, [:word_id, :sentence_id])
    |> validate_required([])
  end
end

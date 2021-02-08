defmodule SylhetiBackend.ExamplesTest do
  use SylhetiBackend.DataCase

  alias SylhetiBackend.Examples

  describe "sentences" do
    alias SylhetiBackend.Examples.Sentence

    @valid_attrs %{body: "some body", translation: "some translation", beng_rep: "some beng_rep", syl_rep: "some syl_rep"}
    @update_attrs %{body: "some updated body", translation: "some updated translation", beng_rep: "some updated beng_rep", syl_rep: "some updated syl_rep"}
    @invalid_attrs %{body: nil}

    def sentence_fixture(attrs \\ %{}) do
      {:ok, sentence} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Examples.create_sentence()

      sentence
    end

    test "list_sentences/0 returns all sentences" do
      sentence = sentence_fixture()
      assert Examples.list_sentences() == [sentence]
    end

    test "get_sentence!/1 returns the sentence with given id" do
      sentence = sentence_fixture()
      assert Examples.get_sentence!(sentence.id) == sentence
    end

    test "create_sentence/1 with valid data creates a sentence" do
      assert {:ok, %Sentence{} = sentence} = Examples.create_sentence(@valid_attrs)
      assert sentence.body == "some body"
      assert sentence.translation == "some translation"
      assert sentence.beng_rep = "some beng_rep"
      assert sentence.syl_rep = "some syl_rep"
    end

    test "create_sentence/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Examples.create_sentence(@invalid_attrs)
    end

    test "update_sentence/2 with valid data updates the sentence" do
      sentence = sentence_fixture()
      assert {:ok, %Sentence{} = sentence} = Examples.update_sentence(sentence, @update_attrs)
      assert sentence.body == "some updated body"
      assert sentence.translation == "some updated translation"
      assert sentence.beng_rep == "some updated beng_rep"
      assert sentence.syl_rep == "some updated syl_rep"
    end

    test "update_sentence/2 with invalid data returns error changeset" do
      sentence = sentence_fixture()
      assert {:error, %Ecto.Changeset{}} = Examples.update_sentence(sentence, @invalid_attrs)
      assert sentence == Examples.get_sentence!(sentence.id)
    end

    test "delete_sentence/1 deletes the sentence" do
      sentence = sentence_fixture()
      assert {:ok, %Sentence{}} = Examples.delete_sentence(sentence)
      assert_raise Ecto.NoResultsError, fn -> Examples.get_sentence!(sentence.id) end
    end

    test "change_sentence/1 returns a sentence changeset" do
      sentence = sentence_fixture()
      assert %Ecto.Changeset{} = Examples.change_sentence(sentence)
    end
  end

  describe "wordsentences" do
    alias SylhetiBackend.Examples.WordSentence

    @valid_attrs %{}
    @update_attrs %{}
    @invalid_attrs %{}

    def word_sentence_fixture(attrs \\ %{}) do
      {:ok, word_sentence} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Examples.create_word_sentence()

      word_sentence
    end

    test "list_wordsentences/0 returns all wordsentences" do
      word_sentence = word_sentence_fixture()
      assert Examples.list_wordsentences() == [word_sentence]
    end

    test "get_word_sentence!/1 returns the word_sentence with given id" do
      word_sentence = word_sentence_fixture()
      assert Examples.get_word_sentence!(word_sentence.id) == word_sentence
    end

    test "create_word_sentence/1 with valid data creates a word_sentence" do
      assert {:ok, %WordSentence{} = word_sentence} = Examples.create_word_sentence(@valid_attrs)
    end

    test "create_word_sentence/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Examples.create_word_sentence(@invalid_attrs)
    end

    test "update_word_sentence/2 with valid data updates the word_sentence" do
      word_sentence = word_sentence_fixture()
      assert {:ok, %WordSentence{} = word_sentence} = Examples.update_word_sentence(word_sentence, @update_attrs)
    end

    test "update_word_sentence/2 with invalid data returns error changeset" do
      word_sentence = word_sentence_fixture()
      assert {:error, %Ecto.Changeset{}} = Examples.update_word_sentence(word_sentence, @invalid_attrs)
      assert word_sentence == Examples.get_word_sentence!(word_sentence.id)
    end

    test "delete_word_sentence/1 deletes the word_sentence" do
      word_sentence = word_sentence_fixture()
      assert {:ok, %WordSentence{}} = Examples.delete_word_sentence(word_sentence)
      assert_raise Ecto.NoResultsError, fn -> Examples.get_word_sentence!(word_sentence.id) end
    end

    test "change_word_sentence/1 returns a word_sentence changeset" do
      word_sentence = word_sentence_fixture()
      assert %Ecto.Changeset{} = Examples.change_word_sentence(word_sentence)
    end
  end
end

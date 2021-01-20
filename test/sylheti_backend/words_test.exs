defmodule SylhetiBackend.WordsTest do
  use SylhetiBackend.DataCase

  alias SylhetiBackend.Words

  describe "words" do
    alias SylhetiBackend.Words.Word

    @valid_attrs %{bengEq: "some bengEq", bengRep: "some bengRep", definition: "some definition", etymology: "some etymology", flexId: "some flexId", ipaLexeme: "some ipaLexeme", pos: "some pos", sylRep: "some sylRep"}
    @update_attrs %{bengEq: "some updated bengEq", bengRep: "some updated bengRep", definition: "some updated definition", etymology: "some updated etymology", flexId: "some updated flexId", ipaLexeme: "some updated ipaLexeme", pos: "some updated pos", sylRep: "some updated sylRep"}
    @invalid_attrs %{bengEq: nil, bengRep: nil, definition: nil, etymology: nil, flexId: nil, ipaLexeme: nil, pos: nil, sylRep: nil}

    def word_fixture(attrs \\ %{}) do
      {:ok, word} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Words.create_word()

      word
    end

    test "list_words/0 returns all words" do
      word = word_fixture()
      assert Words.list_words() == [word]
    end

    test "get_word!/1 returns the word with given id" do
      word = word_fixture()
      assert Words.get_word!(word.id) == word
    end

    test "create_word/1 with valid data creates a word" do
      assert {:ok, %Word{} = word} = Words.create_word(@valid_attrs)
      assert word.bengEq == "some bengEq"
      assert word.bengRep == "some bengRep"
      assert word.definition == "some definition"
      assert word.etymology == "some etymology"
      assert word.flexId == "some flexId"
      assert word.ipaLexeme == "some ipaLexeme"
      assert word.pos == "some pos"
      assert word.sylRep == "some sylRep"
    end

    test "create_word/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Words.create_word(@invalid_attrs)
    end

    test "update_word/2 with valid data updates the word" do
      word = word_fixture()
      assert {:ok, %Word{} = word} = Words.update_word(word, @update_attrs)
      assert word.bengEq == "some updated bengEq"
      assert word.bengRep == "some updated bengRep"
      assert word.definition == "some updated definition"
      assert word.etymology == "some updated etymology"
      assert word.flexId == "some updated flexId"
      assert word.ipaLexeme == "some updated ipaLexeme"
      assert word.pos == "some updated pos"
      assert word.sylRep == "some updated sylRep"
    end

    test "update_word/2 with invalid data returns error changeset" do
      word = word_fixture()
      assert {:error, %Ecto.Changeset{}} = Words.update_word(word, @invalid_attrs)
      assert word == Words.get_word!(word.id)
    end

    test "delete_word/1 deletes the word" do
      word = word_fixture()
      assert {:ok, %Word{}} = Words.delete_word(word)
      assert_raise Ecto.NoResultsError, fn -> Words.get_word!(word.id) end
    end

    test "change_word/1 returns a word changeset" do
      word = word_fixture()
      assert %Ecto.Changeset{} = Words.change_word(word)
    end
  end
end

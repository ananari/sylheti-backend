defmodule SylhetiBackend.WordsTest do
  use SylhetiBackend.DataCase

  alias SylhetiBackend.Words

  describe "words" do
    alias SylhetiBackend.Words.Word

    @valid_attrs %{beng_eq: "some beng_eq", beng_rep: "some beng_rep", definition: "some definition", etymology: "some etymology", id: "some id", ipa: "some ipa", pos: "some pos", syl_rep: "some syl_rep"}
    @update_attrs %{beng_eq: "some updated beng_eq", beng_rep: "some updated beng_rep", definition: "some updated definition", etymology: "some updated etymology", ipa: "some updated ipa", pos: "some updated pos", syl_rep: "some updated syl_rep"}
    @invalid_attrs %{beng_eq: nil, beng_rep: nil, definition: nil, etymology: nil, id: nil, ipa: nil, pos: nil, syl_rep: nil}

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
      assert word.beng_eq == "some beng_eq"
      assert word.beng_rep == "some beng_rep"
      assert word.definition == "some definition"
      assert word.etymology == "some etymology"
      assert word.id == "some id"
      assert word.ipa == "some ipa"
      assert word.pos == "some pos"
      assert word.syl_rep == "some syl_rep"
    end

    test "create_word/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Words.create_word(@invalid_attrs)
    end

    test "update_word/2 with valid data updates the word" do
      word = word_fixture()
      assert {:ok, %Word{} = word} = Words.update_word(word, @update_attrs)
      assert word.beng_eq == "some updated beng_eq"
      assert word.beng_rep == "some updated beng_rep"
      assert word.definition == "some updated definition"
      assert word.etymology == "some updated etymology"
      assert word.ipa == "some updated ipa"
      assert word.pos == "some updated pos"
      assert word.syl_rep == "some updated syl_rep"
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

  describe "wordlinks" do
    alias SylhetiBackend.Words.Wordlink

    @valid_attrs %{type: "some type"}
    @update_attrs %{type: "some updated type"}
    @invalid_attrs %{type: nil}

    def wordlink_fixture(attrs \\ %{}) do
      {:ok, wordlink} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Words.create_wordlink()

      wordlink
    end

    test "list_wordlinks/0 returns all wordlinks" do
      wordlink = wordlink_fixture()
      assert Words.list_wordlinks() == [wordlink]
    end

    test "get_wordlink!/1 returns the wordlink with given id" do
      wordlink = wordlink_fixture()
      assert Words.get_wordlink!(wordlink.id) == wordlink
    end

    test "create_wordlink/1 with valid data creates a wordlink" do
      assert {:ok, %Wordlink{} = wordlink} = Words.create_wordlink(@valid_attrs)
      assert wordlink.type == "some type"
    end

    test "create_wordlink/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Words.create_wordlink(@invalid_attrs)
    end

    test "update_wordlink/2 with valid data updates the wordlink" do
      wordlink = wordlink_fixture()
      assert {:ok, %Wordlink{} = wordlink} = Words.update_wordlink(wordlink, @update_attrs)
      assert wordlink.type == "some updated type"
    end

    test "update_wordlink/2 with invalid data returns error changeset" do
      wordlink = wordlink_fixture()
      assert {:error, %Ecto.Changeset{}} = Words.update_wordlink(wordlink, @invalid_attrs)
      assert wordlink == Words.get_wordlink!(wordlink.id)
    end

    test "delete_wordlink/1 deletes the wordlink" do
      wordlink = wordlink_fixture()
      assert {:ok, %Wordlink{}} = Words.delete_wordlink(wordlink)
      assert_raise Ecto.NoResultsError, fn -> Words.get_wordlink!(wordlink.id) end
    end

    test "change_wordlink/1 returns a wordlink changeset" do
      wordlink = wordlink_fixture()
      assert %Ecto.Changeset{} = Words.change_wordlink(wordlink)
    end
  end
end

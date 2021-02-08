# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     SylhetiBackend.Repo.insert!(%SylhetiBackend.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

import SylhetiBackend.Words.Word
import SylhetiBackend.Words.Wordlink
import SylhetiBackend.Examples.Sentence
import SylhetiBackend.Examples.WordSentence
import SylhetiBackend.Repo

alias SylhetiBackend.{Words.Word, Words.Wordlink, Examples.Sentence, Examples.WordSentence, Repo}

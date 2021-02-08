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

alias SylhetiBackend.{Words.Word, Words.Wordlink, Examples.Sentence, Examples.WordSentence, Repo}

Repo.insert!(%Word{id: "g9c4996d5-d1ea-43ad-928f-1466b3eb3f20", beng_eq: "কাজ",
 beng_rep: "কাজ", syl_rep: "ꠇꠣꠎ", definition: "work", etymology:
 "Sanskrit कार्य kāryá 'act, deed, work'", ipa: "xaz", pos: "n"})

Repo.insert!(%Word{id: "g5ef25b15-aaa8-4c6f-9cb1-1ed6e34585fa", beng_eq: "কাজ",
beng_rep: "কাজ", syl_rep: "ꠇꠣꠎ", definition: "work", etymology:
"Sanskrit कार्य kāryá 'act, deed, work'", ipa: "xas", pos: "n"})

Repo.insert!(%Wordlink{word1_id: "g9c4996d5-d1ea-43ad-928f-1466b3eb3f20",
word2_id: "g5ef25b15-aaa8-4c6f-9cb1-1ed6e34585fa", type: "occurs sometimes
before voiceless consonants"})

s = Repo.insert!(%Sentence{body: "zɛmɔn xaz tɛmɔn ʃaz", translation: "Dress
appropriately for a task", beng_rep: "যেমন কাজ তেমন সাজ",
syl_rep: "ꠎꠦꠝꠘ ꠇꠣꠎ ꠔꠦꠝꠘ ꠡꠣꠎ" })

Repo.insert!(%WordSentence{word_id: "g9c4996d5-d1ea-43ad-928f-1466b3eb3f20", sentence_id: s.id})

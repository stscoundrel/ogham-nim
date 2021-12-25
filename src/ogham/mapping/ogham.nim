import std/tables

proc getOghamMap() : Table[string, string]=
  const mapping = {
    # Sentence start & end should not be empty.
    "᚛": "",
    "᚜": "",

    "ᚁ": "b",
    "ᚂ": "l",
    "ᚃ": "v",
    "ᚄ": "s",
    "ᚅ": "n",
    "ᚆ": "h",
    "ᚇ": "d",
    "ᚈ": "t",
    "ᚉ": "c",
    "ᚊ": "q",
    "ᚋ": "m",
    "ᚌ": "g",
    "ᚍ": "ng",
    "ᚎ": "z",
    "ᚏ": "r",
    "ᚐ": "a",
    "ᚑ": "o",
    "ᚒ": "u",
    "ᚓ": "e",
    "ᚔ": "i",
    "ᚕ": "k",
    "ᚖ": "oi",
    "ᚗ": "ui",
    "ᚘ": "io",
    "ᚙ": "ai",
    "ᚚ": "p",

    # Space
    " ": " ",
  }.toTable()

  result = mapping

export getOghamMap
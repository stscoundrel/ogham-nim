import std/tables

proc getLetterMap() : Table[string, string]=
  const mapping = {   
    "a": "ᚐ",
    "á": "ᚐ",
    "b": "ᚁ",
    "c": "ᚉ",
    "d": "ᚇ",
    "ð": "ᚇ",
    "e": "ᚓ",
    "é": "ᚓ",
    "f": "ᚃ",
    "g": "ᚌ",
    "h": "ᚆ",
    "i": "ᚔ",
    "í": "ᚔ",
    "j": "ᚌ",
    "k": "ᚕ",
    "l": "ᚂ",
    "m": "ᚋ",
    "n": "ᚅ",
    "o": "ᚑ",
    "ó": "ᚑ",
    "p": "ᚚ",
    "q": "ᚊ",
    "r": "ᚏ",
    "s": "ᚄ",
    "t": "ᚈ",
    "þ": "ᚈ",
    "u": "ᚒ",
    "ú": "ᚒ",
    "v": "ᚃ",
    "w": "ᚃ",
    "x": "ᚎ",
    "y": "ᚔ",
    "ý": "ᚔ",
    "z": "ᚎ",
    "å": "ᚑ",
    "ä": "ᚙ",
    "æ": "ᚙ",
    "ö": "ᚑ",
    "ø": "ᚑ",
    "ǫ": "ᚑ",
    "oi": "ᚖ",
    "ui": "ᚗ",
    "io": "ᚘ",
    "ai": "ᚙ",

    # Spaces.
    " ": " ",
  }.toTable()

  result = mapping

proc getDualLetterMap() : Table[string, string]=
  const mapping = {
    "oi": "ᚖ",
    "ui": "ᚗ",
    "io": "ᚘ",
    "ai": "ᚙ",
  }.toTable()

  result = mapping

export getLetterMap
export getDualLetterMap
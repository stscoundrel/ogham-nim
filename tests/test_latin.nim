import unittest

import ogham


test "Appends start / prepends end characters":
  const expected = "᚛᚜"
  const text = ""
  let result = ogham.lettersToOgham(text)
  check result == expected


test "Transforms 'Netacari, nephew of Cagi', from Castletimon, Brittas Bay, Co Wicklow":
  const expected = "᚛ᚅᚓᚈᚐᚉᚐᚏᚔᚅᚓᚈᚐᚉᚉᚐᚌᚔ᚜"
  const text = "netacarinetaccagi"
  let result = ogham.lettersToOgham(text)
  check result == expected


test "Transforms 'Cunalegi, descendant of Qunacanos', from Island, Costello, Co Mayo":
  const expected = "᚛ᚉᚒᚅᚐᚂᚓᚌᚔ ᚐᚃᚔ ᚊᚒᚅᚐᚉᚐᚅᚑᚄ᚜"
  const text = "CUNALEGI AVI QUNACANOS"
  let result = ogham.lettersToOgham(text)
  check result == expected


test "Transforms 'Son of the tribe Corbagnus Glasiconas', from Dooghmakeon, Murrisk, Co Mayo":
  const expected = "᚛ᚋᚐᚊᚔ ᚋᚒᚉᚑᚔ ᚉᚑᚏᚁᚐᚌᚅᚔ ᚌᚂᚐᚄᚔᚉᚑᚅᚐᚄ᚜"
  const text = "MAQI MUCOI CORBAGNI GLASICONAS"
  let result = ogham.lettersToOgham(text)
  check result == expected


test "Transforms 'Here is Corb, son of Labraid', from Ballyboodan, Knocktopher, Co Kilkenny":
  const expected = "᚛ᚉᚑᚏᚁᚔᚕᚑᚔᚋᚐᚊᚔᚂᚐᚏᚔᚇ᚜"
  const text = "CORBIKOIMAQILARID"
  let result = ogham.lettersToOgham(text)
  check result == expected


test "Transforms 'Cunnetas, Neta-Segamonas', from Old Island, Decies-without-Drum, Co Waterford":
  const expected = "᚛ᚉᚒᚅᚅᚓᚈᚐᚄ ᚋᚐᚊᚔ ᚌᚒᚉᚑᚔ ᚅᚓᚈᚐ ᚄᚓᚌᚐᚋᚑᚅᚐᚄ᚜"
  const text = "CUNNETAS MAQI GUCOI NETA SEGAMONAS"
  let result = ogham.lettersToOgham(text)
  check result == expected


test "Transforms two-letter parts correctly.":
  const expected = "᚛ᚖ ᚗ ᚘ ᚙ᚜"
  const text = "oi ui io ai"
  let result = ogham.lettersToOgham(text)
  check result == expected



import unittest

import ogham

test "Transforms Ballaqueeney Ogham Stone, from Isle of Man":
  const content = "᚛ᚁᚔᚃᚐᚔᚇᚑᚅᚐᚄᚋᚐᚊᚔᚋᚒᚉᚑᚔ᚜ ᚛ᚉᚒᚅᚐᚃᚐ[ᚂᚔ]᚜"
  const expected = "bivaidonasmaqimucoi cunava[li]"
  let result = ogham.lettersToOgham(content)
  check result == expected

test "Transforms Breastagh Ogham Stone, from County Mayo, Ireland":
  const content = "᚛ᚂᚓᚌᚌ[--]ᚄᚇ[--]ᚂᚓᚌᚓᚄᚉᚐᚇ᚜ ᚛ᚋᚐᚊ ᚉᚑᚏᚏᚁᚏᚔ ᚋᚐᚊ ᚐᚋᚋᚂᚂᚑᚌᚔᚈᚈ᚜"
  const expected = "legg[--]sd[--]legescad maq corrbri maq ammllogitt"
  let result = ogham.lettersToOgham(content)
  check result == expected

test "Transforms 'Cunalegi, descendant of Qunacanos', from Island, Costello, Co Mayo":
  const content = "᚛ᚉᚒᚅᚐᚂᚓᚌᚔ ᚐᚃᚔ ᚊᚒᚅᚐᚉᚐᚅᚑᚄ᚜"
  const expected = "cunalegi avi qunacanos"
  let result = ogham.lettersToOgham(content)
  check result == expected

test "Transforms 'Netacari, nephew of Cagi', from Castletimon, Brittas Bay, Co Wicklow":
  const content = "᚛ᚅᚓᚈᚐᚉᚐᚏᚔᚅᚓᚈᚐᚉᚉᚐᚌᚔ᚜"
  const expected = "netacarinetaccagi"
  let result = ogham.lettersToOgham(content)
  check result == expected

test "Transforms 'Nettasagri, Briaci', from Bridell, Pembrokeshire":
  const content = "᚛ᚅᚓᚈᚈᚐᚄᚐᚌᚏᚔ ᚋᚐᚊᚔ ᚋᚒᚉᚑᚓ ᚁᚏᚔᚐᚉᚔ᚜"
  const expected = "nettasagri maqi mucoe briaci"
  let result = ogham.lettersToOgham(content)
  check result == expected

test "Transforms Latin text written in ogham, in the Annals of Inisfallen of 1193":
  const content = "᚛ᚅᚒᚋᚒᚄ ᚆᚑᚅᚑᚏᚐᚈᚒᚏ ᚄᚔᚅᚓ᚜ ᚛ᚅᚒᚋᚑ ᚅᚒᚂᚂᚒᚄ ᚐᚋᚐᚈᚒᚏ᚜"
  const expected = "numus honoratur sine numo nullus amatur"
  let result = ogham.lettersToOgham(content)
  check result == expected

test "Transforms Forfeda characters":
  const content = "᚛ᚕᚖᚗᚘᚚᚙ᚜"
  const expected = "koiuiiopai"
  let result = ogham.lettersToOgham(content)
  check result == expected


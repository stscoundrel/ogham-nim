# Ogham

Convert Ogham inscriptions to latin text & vice versa. Nim version.

Also available in [TypeScript](https://github.com/stscoundrel/ogham) and [Python](https://github.com/stscoundrel/ogham-py)

Text to ogham:
```nim

import ogham

# 'Nettasagri, Briaci', from Bridell, Pembrokeshire
const content = "nettasagri maqi mucoe briaci"
let oghamText = ogham.lettersToOgham(content)

echo oghamText) # "᚛ᚅᚓᚈᚈᚐᚄᚐᚌᚏᚔ ᚋᚐᚊᚔ ᚋᚒᚉᚑᚓ ᚁᚏᚔᚐᚉᚔ᚜"

```

Ogham to text:
```nim
import ogham

# 'Cunalegi, descendant of Qunacanos', from Island, Costello, Co Mayo
const content = "᚛ᚉᚒᚅᚐᚂᚓᚌᚔ ᚐᚃᚔ ᚊᚒᚅᚐᚉᚐᚅᚑᚄ᚜"
let result = ogham.oghamToLetters(content)

echo result # "cunalegi avi qunacanos"
```

### About Ogham

Ogham (or ogam) is an Early Medieval alphabet used primarily to write the early Irish language, and later the Old Irish language. Used roughly from 4th to 10th centuries AD.
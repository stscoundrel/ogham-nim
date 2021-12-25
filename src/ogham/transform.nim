import std/tables, std/unicode, strutils

proc transform(content: string, mapping: Table[string, string]) : string=
    result = ""
    let letters = content.toRunes()

    for letter in letters:
        let lower = $letter.toLower()
        if mapping.hasKey(lower):
            result.add(mapping[lower])
        else:
            result.add($letter)

proc replace(content: string, mapping: Table[string, string]) : string=
    result = content

    for dualLetter, oghamSign in mapping:
        result = replace(result, dualLetter, oghamSign)

export transform
export replace
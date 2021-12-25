import std/strformat

from transform import transform, replace
from mapping/ogham import getOghamMap
from mapping/letters import getLetterMap, getDualLetterMap

proc lettersToOgham(content: string) : string =
  const letterMap = getLetterMap()
  const dualLettermap = getDualLetterMap()

  # Parse dual letters first to keep their meaning.
  let dualLetterResult = replace(content, dualLetterMap)
  let fullOghamResult: string = transform(dualLetterResult, letterMap)

  result = fmt"᚛{fullOghamResult}᚜"

proc oghamToLetters(content: string) : string =
  const mapping = getOghamMap()

  result= transform(content, mapping)


export lettersToOgham
export oghamToLetters

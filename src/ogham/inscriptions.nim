from transform import transform
from mapping/ogham import getOghamMap

proc lettersToOgham(content: string) : string =
  const mapping = getOghamMap()

  result = transform(content, mapping)


export lettersToOgham
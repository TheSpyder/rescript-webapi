type t = Dom.domTokenList

@get external length: t => int = "length"

@send @return(nullable) external item: (t, int) => option<string> = "item"
@send external add: (t, string) => unit = "add"
@send @variadic external addMany: (t, array<string>) => unit = "add"
@send external contains: (t, string) => bool = "contains"
/* entries: iterator API, should have language support */
@send external forEach: (t, (string, int) => unit) => unit = "forEach"
/* keys: iterator API, should have language support */
@send external remove: (t, string) => unit = "remove"
@send @variadic external removeMany: (t, array<string>) => unit = "remove"
@send external replace: (t, string, string) => unit = "replace" /* experimental */
@send external supports: (t, string) => bool = "supports" /* experimental, Content Management Level 1 */
@send external toggle: (t, string) => bool = "toggle"
@send external toggleForced: (t, string, @as(json`true`) _) => bool = "toggle"
@send external toString: t => string = "toString"
/* values: iterator API, should have language support */

@get
external value: t => string = "value" /* experimental, from being merged with domSettableTokenList */
@set
external setValue: (t, string) => unit =
  "value" /* experimental, from being merged with domSettableTokenList */

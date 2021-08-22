type t = Dom.domTokenList

@get external length: t => int = ""

@send @return(nullable) external item: (t, int) => option<string> = ""
@send external add: (t, string) => unit = ""
@send @variadic external addMany: (t, array<string>) => unit = "add"
@send external contains: (t, string) => bool = "contains"
/* entries: iterator API, should have language support */
@send external forEach: (t, (string, int) => unit) => unit = ""
/* keys: iterator API, should have language support */
@send external remove: (t, string) => unit = ""
@send @variadic external removeMany: (t, array<string>) => unit = "remove"
@send external replace: (t, string, string) => unit = "" /* experimental */
@send external supports: (t, string) => bool = "" /* experimental, Content Management Level 1 */
@send external toggle: (t, string) => bool = ""
@send external toggleForced: (t, string, @as(json`true`) _) => bool = "toggle"
@send external toString: t => string = ""
/* values: iterator API, should have language support */

@get
external value: t => string = "" /* experimental, from being merged with domSettableTokenList */
@set
external setValue: (t, string) => unit =
  "value" /* experimental, from being merged with domSettableTokenList */

module Impl = (
  T: {
    type t
  },
) => {
  @get external data: T.t => string = ""
  @get external length: T.t => int = ""

  @send external substringData: (T.t, ~offset: int, ~count: int) => string = ""
  @send external appendData: (T.t, string) => unit = ""
  @send external insertData: (T.t, ~offset: int, string) => unit = ""
  @send external deleteData: (T.t, ~offset: int, ~count: int) => unit = ""
  @send external replaceData: (T.t, ~offset: int, ~count: int, string) => unit = ""
}

type t = Dom.characterData

include Webapi__Dom__Node.Impl({
  type t = t
})
include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Webapi__Dom__NonDocumentTypeChildNode.Impl({
  type t = t
})
include Webapi__Dom__ChildNode.Impl({
  type t = t
})
include Impl({
  type t = t
})

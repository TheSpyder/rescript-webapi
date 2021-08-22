module Impl = (
  T: {
    type t
  },
) => {
  external asDocument: T.t => Dom.document = "%identity"

  let asHtmlDocument: T.t => option<Dom.htmlDocument> = %raw(`
    function(document) {
      var defaultView = document.defaultView;

      if (defaultView != null) {
        var HTMLDocument = defaultView.HTMLDocument;

        if (HTMLDocument != null && document instanceof HTMLDocument) {
          return document;
        }
      }
    }
  `)

  @ocaml.doc(" Unsafe cast, use [ashtmlDocument] instead ")
  external unsafeAsHtmlDocument: T.t => Dom.htmlDocument = "%identity"

  let ofNode = (node: Dom.node): option<T.t> =>
    Webapi__Dom__Node.nodeType(node) == Webapi__Dom__Types.Document ? Some(Obj.magic(node)) : None

  @get external characterSet: T.t => string = ""
  @get external compatMode: T.t => string /* compatMode enum */ = "" /* experimental */
  let compatMode: T.t => Webapi__Dom__Types.compatMode = self =>
    Webapi__Dom__Types.decodeCompatMode(compatMode(self))
  @get external doctype: T.t => Dom.documentType = ""
  @get external documentElement: T.t => Dom.element = ""
  @get external documentURI: T.t => string = ""
  @get external hidden: T.t => bool = ""
  @get external implementation: T.t => Dom.domImplementation = ""
  @get external lastStyleSheetSet: T.t => string = ""
  @get @return(nullable)
  external pointerLockElement: T.t => option<Dom.element> = "" /* experimental */

  @get external preferredStyleSheetSet: T.t => string = ""
  @get @return(nullable) external scrollingElement: T.t => option<Dom.element> = ""
  @get external selectedStyleSheetSet: T.t => string = ""
  @set external setSelectedStyleSheetSet: (T.t, string) => unit = "selectedStyleSheetSet"
  @get
  external styleSheets: T.t => array<Dom.cssStyleSheet> = "" /* return StyleSheetList, not array */
  @get external styleSheetSets: T.t => array<string> = ""
  @get external visibilityState: T.t => string /* visibilityState enum */ = ""
  let visibilityState: T.t => Webapi__Dom__Types.visibilityState = self =>
    Webapi__Dom__Types.decodeVisibilityState(visibilityState(self))

  @send external adoptNode: (T.t, Dom.element_like<'a>) => Dom.element_like<'a> = ""
  @send external createAttribute: (T.t, string) => Dom.attr = ""
  @send external createAttributeNS: (T.t, string, string) => Dom.attr = ""
  @send external createComment: (T.t, string) => Dom.comment = ""
  @send external createDocumentFragment: T.t => Dom.documentFragment = ""
  @send external createElement: (T.t, string) => Dom.element = ""
  @send
  external createElementWithOptions: (T.t, string, {..}) => Dom.element =
    "createElement" /* not widely supported */
  @send external createElementNS: (T.t, string, string) => Dom.element = ""
  @send
  external createElementNSWithOptions: (T.t, string, string, {..}) => Dom.element =
    "createElementNS" /* not widely supported */
  @send
  external createEvent: (T.t, string /* large enum */) => Dom.event =
    "" /* discouraged (but not deprecated) in favor of Event constructors */
  @send external createNodeIterator: (T.t, Dom.node_like<'a>) => Dom.nodeIterator = ""
  @send
  external createNodeIteratorWithWhatToShow: (
    T.t,
    Dom.node_like<'a>,
    Webapi__Dom__Types.WhatToShow.t,
  ) => Dom.nodeIterator = "createNodeIterator"
  @send
  external createNodeIteratorWithWhatToShowFilter: (
    T.t,
    Dom.node_like<'a>,
    Webapi__Dom__Types.WhatToShow.t,
    Dom.nodeFilter,
  ) => Dom.nodeIterator = "createNodeIterator" /* createProcessingInstruction */
  @send external createRange: T.t => Dom.range = ""
  @send external createTextNode: (T.t, string) => Dom.text = ""
  @send external createTreeWalker: (T.t, Dom.element_like<'a>) => Dom.treeWalker = ""
  @send
  external createTreeWalkerWithWhatToShow: (
    T.t,
    Dom.element_like<'a>,
    Webapi__Dom__Types.WhatToShow.t,
  ) => Dom.treeWalker = "createTreeWalker"
  @send
  external createTreeWalkerWithWhatToShowFilter: (
    T.t,
    Dom.element_like<'a>,
    Webapi__Dom__Types.WhatToShow.t,
    Dom.nodeFilter,
  ) => Dom.treeWalker = "createTreeWalker"
  @send
  external elementFromPoint: (T.t, int, int) => Dom.element =
    "" /* experimental, but widely supported */
  @send external elementsFromPoint: (T.t, int, int) => array<Dom.element> = "" /* experimental */
  @send external enableStyleSheetsForSet: (T.t, string) => unit = ""
  @send external exitPointerLock: T.t => unit = "" /* experimental */
  @send external getAnimations: T.t => array<Dom.animation> = "" /* experimental */
  @send external getElementsByClassName: (T.t, string) => Dom.htmlCollection = ""
  @send external getElementsByTagName: (T.t, string) => Dom.htmlCollection = ""
  @send external getElementsByTagNameNS: (T.t, string, string) => Dom.htmlCollection = ""
  @send external importNode: (T.t, Dom.element_like<'a>) => Dom.element_like<'a> = ""
  @send
  external importNodeDeep: (T.t, Dom.element_like<'a>, @as(json`true`) _) => Dom.element_like<'a> =
    "importNode"
  @send
  external registerElement: (T.t, string, unit) => Dom.element =
    "" /* experimental and deprecated in favor of customElements.define() */
  @send
  external registerElementWithOptions: (T.t, string, {..}, unit) => Dom.element =
    "registerElement" /* experimental and deprecated in favor of customElements.define() */

  @@ocaml.doc(
    " XPath stuff "
    /* createExpression */
    /* createNSResolver */
    /* evaluate */
    /* GlobalEventHandlers interface */
  )
}

type t = Dom.document

include Webapi__Dom__Node.Impl({
  type t = t
})
include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Webapi__Dom__NonElementParentNode.Impl({
  type t = t
})
include Webapi__Dom__ParentNode.Impl({
  type t = t
})
include Impl({
  type t = t
})

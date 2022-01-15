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

  /** Unsafe cast, use [ashtmlDocument] instead */
  external unsafeAsHtmlDocument: T.t => Dom.htmlDocument = "%identity"

  let ofNode = (node: Dom.node): option<T.t> =>
    Webapi__Dom__Node.nodeType(node) == Webapi__Dom__Types.Document ? Some(Obj.magic(node)) : None

  @get @return(nullable) external activeElement: T.t => option<Dom.element> = "activeElement"
  @get external characterSet: T.t => string = "characterSet"
  @get external compatMode: T.t => string = "compatMode" /* experimental */
  let compatMode: T.t => Webapi__Dom__Types.compatMode = self =>
    Webapi__Dom__Types.decodeCompatMode(compatMode(self))
  @get external doctype: T.t => Dom.documentType = "doctype"
  @get external documentElement: T.t => Dom.element = "documentElement"
  @get external documentURI: T.t => string = "documentURI"
  @get external forms: T.t => Dom.htmlCollection = "forms"
  @get external hidden: T.t => bool = "hidden"
  @get external implementation: T.t => Dom.domImplementation = "implementation"
  @get external lastStyleSheetSet: T.t => string = "lastStyleSheetSet"
  @get @return(nullable)
  external pointerLockElement: T.t => option<Dom.element> = "pointerLockElement" /* experimental */

  @get external preferredStyleSheetSet: T.t => string = "preferredStyleSheetSet"
  @get @return(nullable) external scrollingElement: T.t => option<Dom.element> = "scrollingElement"
  @get external selectedStyleSheetSet: T.t => string = "selectedStyleSheetSet"
  @set external setSelectedStyleSheetSet: (T.t, string) => unit = "selectedStyleSheetSet"
  @get
  external styleSheets: T.t => array<Dom.cssStyleSheet> = "styleSheets" /* return StyleSheetList, not array */
  @get external styleSheetSets: T.t => array<string> = "styleSheetSets"
  @get external visibilityState: T.t => string = "visibilityState"
  let visibilityState: T.t => Webapi__Dom__Types.visibilityState = self =>
    Webapi__Dom__Types.decodeVisibilityState(visibilityState(self))

  @send external adoptNode: (T.t, Dom.element_like<'a>) => Dom.element_like<'a> = "adoptNode"
  @send external createAttribute: (T.t, string) => Dom.attr = "createAttribute"
  @send external createAttributeNS: (T.t, string, string) => Dom.attr = "createAttributeNS"
  @send external createComment: (T.t, string) => Dom.comment = "createComment"
  @send external createDocumentFragment: T.t => Dom.documentFragment = "createDocumentFragment"
  @send external createElement: (T.t, string) => Dom.element = "createElement"
  @send
  external createElementWithOptions: (T.t, string, {..}) => Dom.element =
    "createElement" /* not widely supported */
  @send external createElementNS: (T.t, string, string) => Dom.element = "createElementNS"
  @send
  external createElementNSWithOptions: (T.t, string, string, {..}) => Dom.element =
    "createElementNS" /* not widely supported */
  @send
  external createEvent: (T.t, string) => Dom.event = "createEvent" /* discouraged (but not deprecated) in favor of Event constructors */
  @send external createNodeIterator: (T.t, Dom.node_like<'a>) => Dom.nodeIterator = "createNodeIterator"
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
  ) => Dom.nodeIterator = "createNodeIterator"
  @send external createRange: T.t => Dom.range = "createRange"
  @send external createTextNode: (T.t, string) => Dom.text = "createTextNode"
  @send external createTreeWalker: (T.t, Dom.element_like<'a>) => Dom.treeWalker = "createTreeWalker"
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
  @send @return(nullable)
  external elementFromPoint: (T.t, int, int) => option<Dom.element> = "elementFromPoint"
  @send external elementsFromPoint: (T.t, int, int) => array<Dom.element> = "elementsFromPoint" /* experimental */
  @send external enableStyleSheetsForSet: (T.t, string) => unit = "enableStyleSheetsForSet"
  @send external exitPointerLock: T.t => unit = "exitPointerLock" /* experimental */
  @send external getAnimations: T.t => array<Dom.animation> = "getAnimations" /* experimental */
  @send external getElementsByClassName: (T.t, string) => Dom.htmlCollection = "getElementsByClassName"
  @send external getElementsByTagName: (T.t, string) => Dom.htmlCollection = "getElementsByTagName"
  @send external getElementsByTagNameNS: (T.t, string, string) => Dom.htmlCollection = "getElementsByTagNameNS"
  @send external hasFocus: T.t => bool = "hasFocus"
  @send external importNode: (T.t, Dom.element_like<'a>) => Dom.element_like<'a> = "importNode"
  @send
  external importNodeDeep: (T.t, Dom.element_like<'a>, @as(json`true`) _) => Dom.element_like<'a> =
    "importNode"
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

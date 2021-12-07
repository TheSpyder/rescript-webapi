/* internal, moved out of Impl to reduce unnecessary code duplication */
%%private(
  let ofNode = (node: Dom.node): option<'a> =>
    Webapi__Dom__Node.nodeType(node) == Webapi__Dom__Types.Element ? Some(Obj.magic(node)) : None
  
  /*
    At some point we can drop IE11 support and require constructor names to be available
   */
  let asHtmlElement = %raw(`
    function(element) {
      if ((window.constructor.name !== undefined && /^HTML\w*Element$/.test(element.constructor.name))
          || (/^\[object HTML\w*Element\]$/.test(element.constructor.toString()))) {
        return element;
      }
    }
  `)
)

module Impl = (
  T: {
    type t
  },
) => {
  let asHtmlElement: T.t => option<Dom.htmlElement> = asHtmlElement

  /** Unsafe cast, use [asHtmlElement] instead */
  external unsafeAsHtmlElement: T.t => Dom.htmlElement = "%identity"

  let ofNode: Dom.node => option<T.t> = ofNode

  @get external attributes: T.t => Dom.namedNodeMap = "attributes"
  @get external classList: T.t => Dom.domTokenList = "classList"
  @get external className: T.t => string = "className"
  @set external setClassName: (T.t, string) => unit = "className"
  @get external clientHeight: T.t => int = "clientHeight" /* experimental */
  @get external clientLeft: T.t => int = "clientLeft" /* experimental */
  @get external clientTop: T.t => int = "clientTop" /* experimental */
  @get external clientWidth: T.t => int = "clientWidth" /* experimental */
  @get external id: T.t => string = "id"
  @set external setId: (T.t, string) => unit = "id"
  @get external innerHTML: T.t => string = "innerHTML"
  @set external setInnerHTML: (T.t, string) => unit = "innerHTML"
  @get external localName: T.t => string = "localName"
  @get @return(nullable) external namespaceURI: T.t => option<string> = "namespaceURI"
  @get external outerHTML: T.t => string = "outerHTML" /* experimental, but widely supported */
  @set
  external setOuterHTML: (T.t, string) => unit =
    "outerHTML" /* experimental, but widely supported */
  @get @return(nullable) external prefix: T.t => option<string> = "prefix"
  @get external scrollHeight: T.t => int = "scrollHeight" /* experimental, but widely supported */
  @get external scrollLeft: T.t => float = "scrollLeft" /* experimental */
  @set external setScrollLeft: (T.t, float) => unit = "scrollLeft" /* experimental */
  @get external scrollTop: T.t => float = "scrollTop" /* experimental, but widely supported */
  @set
  external setScrollTop: (T.t, float) => unit = "scrollTop" /* experimental, but widely supported */
  @get external scrollWidth: T.t => int = "scrollWidth" /* experimental */
  @get external shadowRoot: T.t => Dom.element = "shadowRoot" /* experimental */
  @get external slot: T.t => string = "slot" /* experimental */
  @set external setSlot: (T.t, string) => unit = "slot" /* experimental */
  @get external tagName: T.t => string = "tagName"

  @send external attachShadow: (T.t, {"mode": string}) => Dom.shadowRoot = "attachShadow" /* experimental */
  @send
  external attachShadowOpen: (T.t, @as(json`{ "mode": "open" }`) _) => Dom.shadowRoot =
    "attachShadow" /* experimental */
  @send
  external attachShadowClosed: (T.t, @as(json`{ "mode": "closed" }`) _) => Dom.shadowRoot =
    "attachShadow" /* experimental */
  @send external animate: (T.t, {..}, {..}) => Dom.animation = "animate" /* experimental */
  @send @return(nullable)
  external closest: (T.t, string) => option<Dom.element> = "closest" /* experimental */
  @send @return(nullable) external getAttribute: (T.t, string) => option<string> = "getAttribute"
  @send @return(nullable) external getAttributeNS: (T.t, string, string) => option<string> = "getAttributeNS"
  @send external getBoundingClientRect: T.t => Dom.domRect = "getBoundingClientRect"
  @send external getClientRects: T.t => Webapi__Dom__RectList.t = "getClientRects"
  @send external getElementsByClassName: (T.t, string) => Dom.htmlCollection = "getElementsByClassName"
  @send external getElementsByTagName: (T.t, string) => Dom.htmlCollection = "getElementsByTagName"
  @send external getElementsByTagNameNS: (T.t, string, string) => Dom.htmlCollection = "getElementsByTagNameNS"
  @send external hasAttribute: (T.t, string) => bool = "hasAttribute"
  @send external hasAttributeNS: (T.t, string, string) => bool = "hasAttributeNS"
  @send external hasAttributes: T.t => bool = "hasAttributes"
  @send
  external insertAdjacentElement: (
    T.t,
    string,
    Dom.element_like<'a>,
  ) => unit = "insertAdjacentElement" /* experimental, but widely supported */
  let insertAdjacentElement: (
    T.t,
    Webapi__Dom__Types.insertPosition,
    Dom.element_like<'a>,
  ) => unit = (self, position, element) =>
    self->insertAdjacentElement(Webapi__Dom__Types.encodeInsertPosition(position), element)
  @send
  external insertAdjacentHTML: (T.t, string, string) => unit = "insertAdjacentHTML" /* experimental, but widely supported */
  let insertAdjacentHTML: (T.t, Webapi__Dom__Types.insertPosition, string) => unit = (
    self,
    position,
    text,
  ) => self->insertAdjacentHTML(Webapi__Dom__Types.encodeInsertPosition(position), text)
  @send
  external insertAdjacentText: (T.t, string, string) => unit = "insertAdjacentText" /* experimental, but widely supported */
  let insertAdjacentText: (T.t, Webapi__Dom__Types.insertPosition, string) => unit = (
    self,
    position,
    text,
  ) => self->insertAdjacentText(Webapi__Dom__Types.encodeInsertPosition(position), text)
  @send external matches: (T.t, string) => bool = "matches" /* experimental, but widely supported */
  @send external releasePointerCapture: (T.t, Dom.eventPointerId) => unit = "releasePointerCapture"
  @send external removeAttribute: (T.t, string) => unit = "removeAttribute"
  @send external removeAttributeNS: (T.t, string, string) => unit = "removeAttributeNS"
  @send external requestFullscreen: T.t => unit = "requestFullscreen" /* experimental */
  @send external requestPointerLock: T.t => unit = "requestPointerLock" /* experimental */
  @send external scrollIntoView: T.t => unit = "scrollIntoView" /* experimental, but widely supported */
  @send
  external scrollIntoViewNoAlignToTop: (T.t, @as(json`true`) _) => unit =
    "scrollIntoView" /* experimental, but widely supported */
  @send
  external scrollIntoViewWithOptions: (T.t, {"behavior": string, "block": string}) => unit =
    "scrollIntoView" /* experimental */
  @send external scrollBy: (T.t, float, float) => unit = "scrollBy"
  @send
  external scrollByWithOptions: (T.t, {"top": float, "left": float, "behavior": string}) => unit =
    "scrollBy"
  @send external scrollTo: (T.t, float, float) => unit = "scrollTo"
  @send
  external scrollToWithOptions: (T.t, {"top": float, "left": float, "behavior": string}) => unit =
    "scrollTo"
  @send external setAttribute: (T.t, string, string) => unit = "setAttribute"
  @send external setAttributeNS: (T.t, string, string, string) => unit = "setAttributeNS"
  @send external setPointerCapture: (T.t, Dom.eventPointerId) => unit = "setPointerCapture"

  /* GlobalEventHandlers interface */
  /* Not sure this should be exposed, since EventTarget seems like a better API */

  @set external setOnClick: (T.t, Dom.mouseEvent => unit) => unit = "onclick"
}

/* TODO: This doesn't work. Why?
   module Tree (T: { type t; }) => {
     include NodeRe.Impl { type t = Type };
     include EventTargetRe.Impl { type t = Type };
     include Impl { type t = Type };
   };

   include Tree { type t = Dom.element };
 */

type t = Dom.element

include Webapi__Dom__Node.Impl({
  type t = t
})
include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Webapi__Dom__GlobalEventHandlers.Impl({
  type t = t
})
include Webapi__Dom__ParentNode.Impl({
  type t = t
})
include Webapi__Dom__NonDocumentTypeChildNode.Impl({
  type t = t
})
include Webapi__Dom__ChildNode.Impl({
  type t = t
})
include Webapi__Dom__Slotable.Impl({
  type t = t
})
include Impl({
  type t = t
})

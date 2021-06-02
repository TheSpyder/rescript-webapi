/* internal, moved out of Impl to reduce unnecessary code duplication */
let ofNode = (node: Dom.node): option('a) =>
  Webapi__Dom__Node.nodeType(node) == Webapi__Dom__Types.Element ? Some(Obj.magic(node)) : None;

module Impl = (T: {type t;}) => {
  let asHtmlElement: T.t => option(Dom.htmlElement) = [%raw
    {|
    function(element) {
      var ownerDocument = element.ownerDocument;

      if (ownerDocument != null) {
        var defaultView = ownerDocument.defaultView;

        if (defaultView != null) {
          var HTMLElement = defaultView.HTMLElement;

          if (HTMLElement != null && element instanceof HTMLElement) {
            return element;
          }
        }
      }
    }
  |}
  ];

  /** Unsafe cast, use [asHtmlElement] instead */
  external unsafeAsHtmlElement: T.t => Dom.htmlElement = "%identity";

  let ofNode: Dom.node => option(T.t) = ofNode;

  [@get] external attributes: T.t => Dom.namedNodeMap;
  [@get] external classList: T.t => Dom.domTokenList;
  [@get] external className: T.t => string;
  [@set] external setClassName: (T.t, string) => unit = "className";
  [@get] external clientHeight: T.t => int; /* experimental */
  [@get] external clientLeft: T.t => int; /* experimental */
  [@get] external clientTop: T.t => int; /* experimental */
  [@get] external clientWidth: T.t => int; /* experimental */
  [@get] external id: T.t => string;
  [@set] external setId: (T.t, string) => unit = "id";
  [@get] external innerHTML: T.t => string;
  [@set] external setInnerHTML: (T.t, string) => unit = "innerHTML";
  [@get] external localName: T.t => string;
  [@get] [@return nullable] external namespaceURI: T.t => option(string);
  [@get] external outerHTML: T.t => string; /* experimental, but widely supported */
  [@set] external setOuterHTML: (T.t, string) => unit = "outerHTML"; /* experimental, but widely supported */
  [@get] [@return nullable] external prefix: T.t => option(string);
  [@get] external scrollHeight: T.t => int; /* experimental, but widely supported */
  [@get] external scrollLeft: T.t => float; /* experimental */
  [@set] external setScrollLeft: (T.t, float) => unit = "scrollLeft"; /* experimental */
  [@get] external scrollTop: T.t => float; /* experimental, but widely supported */
  [@set] external setScrollTop: (T.t, float) => unit = "scrollTop"; /* experimental, but widely supported */
  [@get] external scrollWidth: T.t => int; /* experimental */
  [@get] external shadowRoot: T.t => Dom.element; /* experimental */
  [@get] external slot: T.t => string; /* experimental */
  [@set] external setSlot: (T.t, string) => unit = "slot"; /* experimental */
  [@get] external tagName: T.t => string;

  [@send] external attachShadow: (T.t, {. "mode": string}) => Dom.shadowRoot; /* experimental */
  [@send]
  external attachShadowOpen: (T.t, [@as {json|{ "mode": "open" }|json}] _) => Dom.shadowRoot =
    "attachShadow"; /* experimental */
  [@send]
  external attachShadowClosed: (T.t, [@as {json|{ "mode": "closed" }|json}] _) => Dom.shadowRoot =
    "attachShadow"; /* experimental */
  [@send] external animate: (T.t, Js.t({..}), Js.t({..})) => Dom.animation; /* experimental */
  [@send] [@return nullable] external closest: (T.t, string) => option(Dom.element); /* experimental */
  [@send] external createShadowRoot: T.t => Dom.shadowRoot; /* experimental AND deprecated (?!) */
  [@send] [@return nullable] external getAttribute: (T.t, string) => option(string);
  [@send] [@return nullable] external getAttributeNS: (T.t, string, string) => option(string);
  [@send] external getBoundingClientRect: T.t => Dom.domRect;
  [@send] external getClientRects: T.t => array(Dom.domRect);
  [@send] external getElementsByClassName: (T.t, string) => Dom.htmlCollection;
  [@send] external getElementsByTagName: (T.t, string) => Dom.htmlCollection;
  [@send] external getElementsByTagNameNS: (T.t, string, string) => Dom.htmlCollection;
  [@send] external hasAttribute: (T.t, string) => bool;
  [@send] external hasAttributeNS: (T.t, string, string) => bool;
  [@send] external hasAttributes: T.t => bool;
  [@send]
  external insertAdjacentElement:
    (T.t, string /* insertPosition enum */, Dom.element_like('a)) => unit; /* experimental, but widely supported */
  let insertAdjacentElement:
    (T.t, Webapi__Dom__Types.insertPosition, Dom.element_like('a)) => unit =
    (self, position, element) =>
      self->insertAdjacentElement(Webapi__Dom__Types.encodeInsertPosition(position), element);
  [@send] external insertAdjacentHTML: (T.t, string /* insertPosition enum */, string) => unit; /* experimental, but widely supported */
  let insertAdjacentHTML: (T.t, Webapi__Dom__Types.insertPosition, string) => unit =
    (self, position, text) =>
      self->insertAdjacentHTML(Webapi__Dom__Types.encodeInsertPosition(position), text);
  [@send] external insertAdjacentText: (T.t, string /* insertPosition enum */, string) => unit; /* experimental, but widely supported */
  let insertAdjacentText: (T.t, Webapi__Dom__Types.insertPosition, string) => unit =
    (self, position, text) =>
      self->insertAdjacentText(Webapi__Dom__Types.encodeInsertPosition(position), text);
  [@send] external matches: (T.t, string) => bool; /* experimental, but widely supported */
  [@send] external releasePointerCapture: (T.t, Dom.eventPointerId) => unit;
  [@send] external removeAttribute: (T.t, string) => unit;
  [@send] external removeAttributeNS: (T.t, string, string) => unit;
  [@send] external requestFullscreen: T.t => unit; /* experimental */
  [@send] external requestPointerLock: T.t => unit; /* experimental */
  [@send] external scrollIntoView: T.t => unit; /* experimental, but widely supported */
  [@send]
  external scrollIntoViewNoAlignToTop: (T.t, [@as {json|true|json}] _) => unit = "scrollIntoView"; /* experimental, but widely supported */
  [@send]
  external scrollIntoViewWithOptions:
    (
      T.t,
      {
        .
        "behavior": string,
        "block": string,
      }
    ) =>
    unit =
    "scrollIntoView"; /* experimental */
  [@send] external scrollBy: (T.t, float, float) => unit;
  [@send]
  external scrollByWithOptions:
    (
      T.t,
      {
        .
        "top": float,
        "left": float,
        "behavior": string,
      }
    ) =>
    unit =
    "scrollBy";
  [@send] external scrollTo: (T.t, float, float) => unit;
  [@send]
  external scrollToWithOptions:
    (
      T.t,
      {
        .
        "top": float,
        "left": float,
        "behavior": string,
      }
    ) =>
    unit =
    "scrollTo";
  [@send] external setAttribute: (T.t, string, string) => unit;
  [@send] external setAttributeNS: (T.t, string, string, string) => unit;
  [@send] external setPointerCapture: (T.t, Dom.eventPointerId) => unit;

  /* GlobalEventHandlers interface */
  /* Not sure this should be exposed, since EventTarget seems like a better API */

  [@set] external setOnClick: (T.t, Dom.mouseEvent => unit) => unit = "onclick";
};

/* TODO: This doesn't work. Why?
   module Tree (T: { type t; }) => {
     include NodeRe.Impl { type t = Type };
     include EventTargetRe.Impl { type t = Type };
     include Impl { type t = Type };
   };

   include Tree { type t = Dom.element };
   */

type t = Dom.element;

include Webapi__Dom__Node.Impl({
  type nonrec t = t;
});
include Webapi__Dom__EventTarget.Impl({
  type nonrec t = t;
});
include Webapi__Dom__GlobalEventHandlers.Impl({
  type nonrec t = t;
});
include Webapi__Dom__ParentNode.Impl({
  type nonrec t = t;
});
include Webapi__Dom__NonDocumentTypeChildNode.Impl({
  type nonrec t = t;
});
include Webapi__Dom__ChildNode.Impl({
  type nonrec t = t;
});
include Webapi__Dom__Slotable.Impl({
  type nonrec t = t;
});
include Impl({
  type nonrec t = t;
});

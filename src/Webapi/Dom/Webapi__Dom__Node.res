module Impl = (
  T: {
    type t
  },
) => {
  external asNode: T.t => Dom.node = "%identity"

  /* baseURI */
  @get external childNodes: T.t => Dom.nodeList = "childNodes"
  @get @return(nullable) external firstChild: T.t => option<Dom.node> = "firstChild"
  @get external innerText: T.t => string = "innerText"
  @set external setInnerText: (T.t, string) => unit = "innerText"
  @get @return(nullable) external lastChild: T.t => option<Dom.node> = "lastChild"
  @get @return(nullable) external nextSibling: T.t => option<Dom.node> = "nextSibling"
  @get external nodeName: T.t => string = "nodeName" /* nodePrincipal */
  @get external nodeType: T.t => int = "nodeType"
  let nodeType: T.t => Webapi__Dom__Types.nodeType = self =>
    Webapi__Dom__Types.decodeNodeType(nodeType(self))
  @get @return(nullable) external nodeValue: T.t => option<string> = "nodeValue"
  @set
  external setNodeValue: (T.t, Js.null<string>) => unit =
    "nodeValue" /* let setNodeValue : T.t => option string => unit = fun self value => setNodeValue self (Js.Null.fromOption value); */ /* temporarily removed to reduce codegen size */
  /* Not supported yet
     [@set] external setNodeValue : T.t => string => unit = "nodeValue";
     [@set] external clearNodeValue : T.t => _ [@as {json|null|json}] => unit = "nodeValue";
 */
  /* outerText */
  @get external ownerDocument: T.t => Dom.document = "ownerDocument"
  @get @return(nullable) external parentElement: T.t => option<Dom.element> = "parentElement"
  @get @return(nullable) external parentNode: T.t => option<Dom.node> = "parentNode"
  @get @return(nullable) external previousSibling: T.t => option<Dom.node> = "previousSibling"
  @get external rootNode: T.t => Dom.node = "rootNode"
  @get external textContent: T.t => string = "textContent"
  @set external setTextContent: (T.t, string) => unit = "textContent"

  @send external appendChild: (T.t, ~child: Dom.node_like<'a>) => unit = "appendChild"
  @send external cloneNode: T.t => T.t = "cloneNode"
  @send external cloneNodeDeep: (T.t, @as(json`true`) _) => T.t = "cloneNode"
  @send
  external compareDocumentPosition: (T.t, ~other: Dom.node_like<'a>) => int = "compareDocumentPosition" /* returns a bitmask which could also be represeneted as an enum, see https://developer.mozilla.org/en-US/docs/Web/API/Node/compareDocumentPosition */
  @send external contains: (T.t, ~child: Dom.node_like<'a>) => bool = "contains"
  @send external getRootNode: T.t => Dom.node = "getRootNode"
  @send
  external getRootNodeComposed: (T.t, @as(json`{ "composed": true }`) _) => Dom.node = "getRootNode"
  @send external hasChildNodes: T.t => bool = "hasChildNodes"
  @send
  external insertBefore: (T.t, ~new: Dom.node_like<'a>, ~before: Dom.node_like<'b>) => Dom.node_like<'a> = "insertBefore"
  @send
  external insertAtEnd: (T.t, ~new: Dom.node_like<'a>, @as(json`null`) _) => Dom.node_like<'a> = "insertBefore"
  @send external isDefaultNamespace: (T.t, string) => bool = "isDefaultNamespace"
  @send external isEqualNode: (T.t, Dom.node_like<'a>) => bool = "isEqualNode"
  @deprecated("There is no need to use isSameNode(); instead use the === strict equality operator.")
  @send external isSameNode: (T.t, Dom.node_like<'a>) => bool = "isSameNode"
  @send @return(nullable) external lookupNamespaceURI: (T.t, string) => option<string> = "lookupNamespaceURI"
  @send @return(nullable)
  external lookupDefaultNamespaceURI: (T.t, @as(json`null`) _) => option<string> =
    "lookupNamespaceURI"
  @send external lookupPrefix: T.t => string = "lookupPrefix"
  @send external normalize: T.t => unit = "normalize"
  @send external removeChild: (T.t, ~child: Dom.node_like<'a>) => Dom.node_like<'a> = "removeChild"

  @send external replaceChild: (T.t, ~new: Dom.node_like<'a>, ~child: Dom.node_like<'b>) => Dom.node_like<'b> = "replaceChild"
}

type t = Dom.node

include Webapi__Dom__EventTarget.Impl({
  type t = t
})
include Impl({
  type t = t
})

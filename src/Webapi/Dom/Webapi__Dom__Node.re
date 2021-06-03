module Impl = (T: {type t;}) => {
  external asNode: T.t => Dom.node = "%identity";

  /* baseURI */
  [@get] external childNodes: T.t => Dom.nodeList;
  [@get] [@return nullable] external firstChild: T.t => option(Dom.node);
  [@get] external innerText: T.t => string;
  [@set] external setInnerText: (T.t, string) => unit = "innerText";
  [@get] [@return nullable] external lastChild: T.t => option(Dom.node);
  [@get] [@return nullable] external nextSibling: T.t => option(Dom.node);
  [@get] external nodeName: T.t => string; /* nodePrincipal */
  [@get] external nodeType: T.t => int /* nodeType enum */;
  let nodeType: T.t => Webapi__Dom__Types.nodeType =
    self => Webapi__Dom__Types.decodeNodeType(nodeType(self));
  [@get] [@return nullable] external nodeValue: T.t => option(string);
  [@set] external setNodeValue: (T.t, Js.null(string)) => unit = "nodeValue" /* let setNodeValue : T.t => option string => unit = fun self value => setNodeValue self (Js.Null.fromOption value); */; /* temporarily removed to reduce codegen size */
  /* Not supported yet
     [@set] external setNodeValue : T.t => string => unit = "nodeValue";
     [@set] external clearNodeValue : T.t => _ [@as {json|null|json}] => unit = "nodeValue";
     */
  /* outerText */
  [@get] external ownerDocument: T.t => Dom.document;
  [@get] [@return nullable] external parentElement: T.t => option(Dom.element);
  [@get] [@return nullable] external parentNode: T.t => option(Dom.node);
  [@get] [@return nullable] external previousSibling: T.t => option(Dom.node);
  [@get] external rootNode: T.t => Dom.node;
  [@get] external textContent: T.t => string;
  [@set] external setTextContent: (T.t, string) => unit = "textContent";

  [@send] external appendChild: (T.t, Dom.node_like('a)) => unit;
  [@send] external cloneNode: T.t => T.t;
  [@send] external cloneNodeDeep: (T.t, [@as {json|true|json}] _) => T.t = "cloneNode";
  [@send] external compareDocumentPosition: (T.t, Dom.node_like('a)) => int; /* returns a bitmask which could also be represeneted as an enum, see https://developer.mozilla.org/en-US/docs/Web/API/Node/compareDocumentPosition */
  [@send] external contains: (T.t, Dom.node_like('a)) => bool;
  [@send] external getRootNode: T.t => Dom.node;
  [@send]
  external getRootNodeComposed: (T.t, [@as {json|{ "composed": true }|json}] _) => Dom.node =
    "getRootNode";
  [@send] external hasChildNodes: T.t => bool;
  [@send]
  external insertBefore: (T.t, Dom.node_like('a), Dom.node_like('b)) => Dom.node_like('a);
  [@send] external isDefaultNamespace: (T.t, string) => bool;
  [@send] external isEqualNode: (T.t, Dom.node_like('a)) => bool;
  [@send] external isSameNode: (T.t, Dom.node_like('a)) => bool;
  [@send] [@return nullable] external lookupNamespaceURI: (T.t, string) => option(string);
  [@send] [@return nullable]
  external lookupDefaultNamespaceURI: (T.t, [@as {json|null|json}] _) => option(string) =
    "lookupNamespaceURI";
  [@send] external lookupPrefix: T.t => string = "lookupPrefix";
  [@send] external normalize: T.t => unit;
  [@send] external removeChild: (T.t, Dom.node_like('a)) => Dom.node_like('a);

  /** @since 0.19.0 */
  [@send]
  external replaceChild: (T.t, Dom.node_like('a), Dom.node_like('b)) => Dom.node_like('b);
};

type t = Dom.node;

include Webapi__Dom__EventTarget.Impl({
  type nonrec t = t;
});
include Impl({
  type nonrec t = t;
});

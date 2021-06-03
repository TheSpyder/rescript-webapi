type t = Dom.range;

[@new] external make: unit => t = "Range"; /* experimental */

[@get] external collapsed: t => bool;
[@get] external commonAncestorContainer: t => Dom.node;
[@get] external endContainer: t => Dom.node;
[@get] external endOffset: t => int;
[@get] external startContainer: t => Dom.node;
[@get] external startOffset: t => int;

[@send] external setStart: (t, Dom.node_like('a), int) => unit;
[@send] external setEnd: (t, Dom.node_like('a), int) => unit;
[@send] external setStartBefore: (t, Dom.node_like('a)) => unit;
[@send] external setStartAfter: (t, Dom.node_like('a)) => unit;
[@send] external setEndBefore: (t, Dom.node_like('a)) => unit;
[@send] external setEndAfter: (t, Dom.node_like('a)) => unit;
[@send] external selectNode: (t, Dom.node_like('a)) => unit;
[@send] external selectNodeContents: (t, Dom.node_like('a)) => unit;
[@send] external collapse: t => unit;
[@send] external collapseToStart: (t, [@as {json|true|json}] _) => unit = "collapse";
[@send] external cloneContents: t => Dom.documentFragment;
[@send] external deleteContents: t => unit;
[@send] external extractContents: t => Dom.documentFragment;
[@send] external insertNode: (t, Dom.node_like('a)) => unit;
[@send] external surroundContents: (t, Dom.node_like('a)) => unit;
[@send]
external compareBoundaryPoints: (t, int /* compareHow enum */, t) => int /* compareResult enum */;
let compareBoundaryPoint: (t, Webapi__Dom__Types.compareHow, t) => Webapi__Dom__Types.compareResult =
  (self, how, range) =>
    Webapi__Dom__Types.decodeCompareResult(
      self->compareBoundaryPoints(Webapi__Dom__Types.encodeCompareHow(how), range),
    );
[@send] external cloneRange: t => t;
[@send] external detach: t => unit;
[@send] external toString: t => string;
[@send] external comparePoint: (t, Dom.node_like('a), int) => int /* compareRsult enum */;
let comparePoint: (t, Dom.node_like('a), int) => Webapi__Dom__Types.compareResult =
  (self, node, offset) =>
    Webapi__Dom__Types.decodeCompareResult(self->comparePoint(node, offset));
[@send] external createContextualFragment: (t, string) => Dom.documentFragment; /* experimental, but widely supported */
[@send] external getBoundingClientRect: t => Dom.domRect; /* experimental, but widely supported */
[@send] external getClientRects: t => array(Dom.domRect); /* experimental, but widely supported */
[@send] external intersectsNode: (t, Dom.node_like('a)) => bool;
[@send] external isPointInRange: (t, Dom.node_like('a), int) => bool;

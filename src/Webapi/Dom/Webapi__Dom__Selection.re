type t = Dom.selection;

[@get] [@return nullable] external anchorNode: t => option(Dom.node);
[@get] external anchorOffset: t => int;
[@get] [@return nullable] external focusNode: t => option(Dom.node);
[@get] external focusOffset: t => int;
[@get] external isCollapsed: t => bool;
[@get] external rangeCount: t => int;

[@send] external getRangeAt: (t, int) => Dom.range;
[@send] external collapse: (t, Dom.node_like(_), int) => unit;
[@send] external extend: (t, Dom.node_like(_), int) => unit;
[@send] external collapseToStart: t => unit;
[@send] external collapseToEnd: t => unit;
[@send] external selectAllChildren: (t, Dom.node_like(_)) => unit;
[@send] external setBaseAndExtent: (t, Dom.node_like(_), int, Dom.node_like(_), int) => unit;
[@send] external addRange: (t, Dom.range) => unit;
[@send] external removeRange: (t, Dom.range) => unit;
[@send] external removeAllRanges: t => unit;
[@send] external deleteFromDocument: t => unit;
[@send] external toString: t => string;
[@send] external containsNode: (t, Dom.node_like(_), [@as {json|false|json}] _) => bool;
[@send]
external containsNodePartly: (t, Dom.node_like(_), [@as {json|true|json}] _) => bool =
  "containsNode";

type t = Dom.selection

@get @return(nullable) external anchorNode: t => option<Dom.node> = "anchorNode"
@get external anchorOffset: t => int = "anchorOffset"
@get @return(nullable) external focusNode: t => option<Dom.node> = "focusNode"
@get external focusOffset: t => int = "focusOffset"
@get external isCollapsed: t => bool = "isCollapsed"
@get external rangeCount: t => int = "rangeCount"

@send external getRangeAt: (t, int) => Dom.range = "getRangeAt"
@send external collapse: (t, Dom.node_like<_>, int) => unit = "collapse"
@send external extend: (t, Dom.node_like<_>, int) => unit = "extend"
@send external collapseToStart: t => unit = "collapseToStart"
@send external collapseToEnd: t => unit = "collapseToEnd"
@send external selectAllChildren: (t, Dom.node_like<_>) => unit = "selectAllChildren"
@send external setBaseAndExtent: (t, Dom.node_like<_>, int, Dom.node_like<_>, int) => unit = "setBaseAndExtent"
@send external addRange: (t, Dom.range) => unit = "addRange"
@send external removeRange: (t, Dom.range) => unit = "removeRange"
@send external removeAllRanges: t => unit = "removeAllRanges"
@send external deleteFromDocument: t => unit = "deleteFromDocument"
@send external toString: t => string = "toString"
@send external containsNode: (t, Dom.node_like<_>, @as(json`false`) _) => bool = "containsNode"
@send
external containsNodePartly: (t, Dom.node_like<_>, @as(json`true`) _) => bool = "containsNode"

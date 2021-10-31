type t = Dom.range

@new external make: unit => t = "Range"

@get external collapsed: t => bool = "collapsed"
@get external commonAncestorContainer: t => Dom.node = "commonAncestorContainer"
@get external endContainer: t => Dom.node = "endContainer"
@get external endOffset: t => int = "endOffset"
@get external startContainer: t => Dom.node = "startContainer"
@get external startOffset: t => int = "startOffset"

@send external setStart: (t, Dom.node_like<'a>, int) => unit = "setStart"
@send external setEnd: (t, Dom.node_like<'a>, int) => unit = "setEnd"
@send external setStartBefore: (t, Dom.node_like<'a>) => unit = "setStartBefore"
@send external setStartAfter: (t, Dom.node_like<'a>) => unit = "setStartAfter"
@send external setEndBefore: (t, Dom.node_like<'a>) => unit = "setEndBefore"
@send external setEndAfter: (t, Dom.node_like<'a>) => unit = "setEndAfter"
@send external selectNode: (t, Dom.node_like<'a>) => unit = "selectNode"
@send external selectNodeContents: (t, Dom.node_like<'a>) => unit = "selectNodeContents"
@send external collapse: t => unit = "collapse"
@send external collapseToStart: (t, @as(json`true`) _) => unit = "collapse"
@send external cloneContents: t => Dom.documentFragment = "cloneContents"
@send external deleteContents: t => unit = "deleteContents"
@send external extractContents: t => Dom.documentFragment = "extractContents"
@send external insertNode: (t, Dom.node_like<'a>) => unit = "insertNode"
@send external surroundContents: (t, Dom.node_like<'a>) => unit = "surroundContents"
@send
external compareBoundaryPoints: (t, int, t) => int = "compareBoundaryPoints"
let compareBoundaryPoint: (
  t,
  Webapi__Dom__Types.compareHow,
  t,
) => Webapi__Dom__Types.compareResult = (self, how, range) =>
  Webapi__Dom__Types.decodeCompareResult(
    self->compareBoundaryPoints(Webapi__Dom__Types.encodeCompareHow(how), range),
  )
@send external cloneRange: t => t = "cloneRange"
@send external detach: t => unit = "detach"
@send external toString: t => string = "toString"
@send external comparePoint: (t, Dom.node_like<'a>, int) => int = "comparePoint"
let comparePoint: (t, Dom.node_like<'a>, int) => Webapi__Dom__Types.compareResult = (
  self,
  node,
  offset,
) => Webapi__Dom__Types.decodeCompareResult(self->comparePoint(node, offset))
@send
external createContextualFragment: (t, string) => Dom.documentFragment = "createContextualFragment" /* experimental, but widely supported */
@send external getBoundingClientRect: t => Dom.domRect = "getBoundingClientRect" /* experimental, but widely supported */
@send external getClientRects: t => Webapi__Dom__RectList.t = "getClientRects" /* experimental, but widely supported */
@send external intersectsNode: (t, Dom.node_like<'a>) => bool = "intersectsNode"
@send external isPointInRange: (t, Dom.node_like<'a>, int) => bool = "isPointInRange"

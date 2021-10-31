type t = Dom.nodeIterator

@get external root: t => Dom.node = "root"
@get external referenceNode: t => Dom.node = "referenceNode"
@get external pointerBeforeReferenceNode: t => bool = "pointerBeforeReferenceNode"
@get external whatToShow: t => Webapi__Dom__Types.WhatToShow.t = "whatToShow"
@get @return(nullable) external filter: t => option<Dom.nodeFilter> = "filter"

@send @return(nullable) external nextNode: t => option<Dom.node> = "nextNode"
@send @return(nullable) external previousNode: t => option<Dom.node> = "previousNode"
@send external detach: t => unit = "detach"

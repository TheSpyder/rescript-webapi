type t = Dom.nodeIterator

@get external root: t => Dom.node = ""
@get external referenceNode: t => Dom.node = ""
@get external pointerBeforeReferenceNode: t => bool = ""
@get external whatToShow: t => Webapi__Dom__Types.WhatToShow.t = ""
@get @return(nullable) external filter: t => option<Dom.nodeFilter> = ""

@send @return(nullable) external nextNode: t => option<Dom.node> = ""
@send @return(nullable) external previousNode: t => option<Dom.node> = ""
@send external detach: t => unit = ""

type t = Dom.treeWalker

@get external root: t => Dom.node = "root"
@get external whatToShow: t => Webapi__Dom__Types.WhatToShow.t = "whatToShow"
@get @return(nullable) external filter: t => option<Dom.nodeFilter> = "filter"
@get external currentNode: t => Dom.node = "currentNode"
@set external setCurrentNode: (t, Dom.node) => unit = "setCurrentNode"

@send @return(nullable) external parentNode: t => option<Dom.node> = "parentNode"
@send @return(nullable) external firstChild: t => option<Dom.node> = "firstChild"
@send @return(nullable) external lastChild: t => option<Dom.node> = "lastChild"
@send @return(nullable) external previousSibling: t => option<Dom.node> = "previousSibling"
@send @return(nullable) external nextSibling: t => option<Dom.node> = "nextSibling"
@send @return(nullable) external previousNode: t => option<Dom.node> = "previousNode"
@send @return(nullable) external nextNode: t => option<Dom.node> = "nextNode"

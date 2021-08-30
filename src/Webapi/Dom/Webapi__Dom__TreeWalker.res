type t = Dom.treeWalker

@get external root: t => Dom.node = ""
@get external whatToShow: t => Webapi__Dom__Types.WhatToShow.t = ""
@get @return(nullable) external filter: t => option<Dom.nodeFilter> = ""
@get external currentNode: t => Dom.node = ""
@set external setCurrentNode: (t, Dom.node) => unit = ""

@send @return(nullable) external parentNode: t => option<Dom.node> = ""
@send @return(nullable) external firstChild: t => option<Dom.node> = ""
@send @return(nullable) external lastChild: t => option<Dom.node> = ""
@send @return(nullable) external previousSibling: t => option<Dom.node> = ""
@send @return(nullable) external nextSibling: t => option<Dom.node> = ""
@send @return(nullable) external previousNode: t => option<Dom.node> = ""
@send @return(nullable) external nextNode: t => option<Dom.node> = ""

type t = Dom.mutationRecord

@get external type_: t => string = "type"
@get external target: t => Dom.node = "target"
@get external addedNodes: t => Dom.nodeList = "addedNodes"
@get external removedNodes: t => Dom.nodeList = "removedNodes"
@get @return(nullable) external previousSibling: t => option<Dom.node> = "previousSibling"
@get @return(nullable) external pnextSibling: t => option<Dom.node> = "pnextSibling"
@get external attributeName: t => string = "attributeName"
@get external attributeNamespace: t => string = "attributeNamespace"
@get external oldValue: t => string = "oldValue"

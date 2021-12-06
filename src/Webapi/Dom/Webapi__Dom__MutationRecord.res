// https://dom.spec.whatwg.org/#interface-mutationrecord
type t = Dom.mutationRecord

@get external type_: t => string = "type"
@get external target: t => Dom.node = "target"
@get external addedNodes: t => Dom.nodeList = "addedNodes"
@get external removedNodes: t => Dom.nodeList = "removedNodes"

// everything else might return null
@get @return(nullable) external previousSibling: t => option<Dom.node> = "previousSibling"
@get @return(nullable)
external nextSibling: t => option<Dom.node> = "nextSibling"
@get @return(nullable)
external attributeName: t => option<string> = "attributeName"
@get @return(nullable) external attributeNamespace: t => option<string> = "attributeNamespace"
@get @return(nullable) external oldValue: t => option<string> = "oldValue"

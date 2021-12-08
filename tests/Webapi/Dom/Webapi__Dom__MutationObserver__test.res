open Webapi.Dom
open MutationObserver

let el = document->Document.createElement("strong")
let observer: t = MutationObserver.make((_records, _observer) => ())

let _ = observer->MutationObserver.observe(
  el,
  {
    "subtree": true,
    "childList": true,
    "attributes": true,
    "attributeOldValue": true,
    "characterData": true,
    "characterDataOldValue": true,
  },
)

let _ = observer->MutationObserver.disconnect
let records: array<Dom.mutationRecord> = observer->MutationObserver.takeRecords
let aRecord = records->Js.Array2.unsafe_get(0)

open MutationRecord

let recordType: string = aRecord->type_
let recordTarget: Dom.node = aRecord->target
let recordAddedNodes: Dom.nodeList = aRecord->addedNodes
let recordRemovedNodes: Dom.nodeList = aRecord->removedNodes

let recordPrevSibling: option<Dom.node> = aRecord->previousSibling
let recordNextSibling: option<Dom.node> = aRecord->nextSibling
let recordAttributeName: option<string> = aRecord->attributeName
let recordAttributeNamespace: option<string> = aRecord->attributeNamespace
let recordOldValue: option<string> = aRecord->oldValue

open Webapi.Dom
open Node

let node = document->Document.createElement("strong")->Element.rootNode
let node2 = document->Document.createElement("small")->Element.rootNode
let node3 = document->Document.createElement("small")->Element.rootNode

let _ = node->childNodes
let _ = node->firstChild
let _ = node->lastChild
let _ = node->nextSibling
let _ = node->nodeName
let _ = node->nodeType
let _ = node->nodeValue
let _ = node->setNodeValue(Js.Null.return("foo"))
/* Not supported yet
   let _ = node->setNodeValue("foo");
   let _ = node->clearNodeValue;
 */
let _ = node->ownerDocument
let _ = node->parentNode
let _ = node->parentElement
let _ = node->previousSibling
let _ = node->rootNode
let _ = node->textContent
let _ = node->setTextContent("foo")

let _ = node->appendChild(~child=node2)
let _ = node->cloneNode
let _ = node->cloneNodeDeep
let _ = node->compareDocumentPosition(~other=node2)
let _ = node->contains(~child=node2)
let _ = node->getRootNode
let _ = node->getRootNodeComposed
let _ = node->hasChildNodes
let _ = node->insertBefore(~new=node2, ~before=node3)
let _ = node->insertAtEnd(~new=node2)
let _ = node->isDefaultNamespace("http://...")
let _ = node->isEqualNode(node2)
let _ = node->lookupPrefix
let _ = node->lookupNamespaceURI("https://...")
let _ = node->lookupDefaultNamespaceURI
let _ = node->normalize
let _ = node->removeChild(~child=node2)
let _ = node->replaceChild(~new=node3, ~child=node2)

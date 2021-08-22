open Webapi.Dom
open HtmlElement

let el =
  document
  ->Document.createElement("strong")
  ->Element.asHtmlElement
  ->TestHelpers.unsafelyUnwrapOption
let el2 =
  document->Document.createElement("small")->Element.asHtmlElement->TestHelpers.unsafelyUnwrapOption
let event = document->Document.createEvent("my-event")

let _ = el->accessKey
let _ = el->setAccessKey("")
let _ = el->accessKeyLabel
let _ = el->contentEditable
let _ = el->setContentEditable(Inherit)
let _ = el->isContentEditable
let _ = el->contextMenu
let _ = el->setContextMenu(el2)
let _ = el->dataset
let _ = el->dir
let _ = el->setDir(Rtl)
let _ = el->draggable
let _ = el->setDraggable(true)
let _ = el->dropzone
let _ = el->hidden
let _ = el->setHidden(true)
let _ = el->itemScope
let _ = el->setItemScope(true)
let _ = el->itemType
let _ = el->itemId
let _ = el->setItemId("my-id")
let _ = el->itemRef
let _ = el->itemProp
let _ = el->itemValue
let _ = el->setItemValue(%raw("{}"))
let _ = el->lang
let _ = el->setLang("en")
let _ = el->offsetHeight
let _ = el->offsetLeft
let _ = el->offsetParent
let _ = el->offsetTop
let _ = el->offsetWidth
let _ = el->spellcheck
let _ = el->setSpellcheck(true)
let _ = el->style
/* let _ = setStyle el CSSStyleDeclaration.t; /* TODO: No way to make a CSSStyleDeclaration at the moment */ */
let _ = el->tabIndex
let _ = el->setTabIndex(42)
let _ = el->title
let _ = el->setTitle("hovertext!")
let _ = el->translate
let _ = el->setTranslate(true)

el->blur
el->click
el->focus
el->forceSpellCheck

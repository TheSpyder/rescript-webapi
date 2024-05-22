open Webapi.Dom
open HtmlElement

let el: t =
  document
  ->Document.createElement("strong")
  ->Element.asHtmlElement
  ->TestHelpers.unsafelyUnwrapOption
let el2: t =
  document->Document.createElement("small")->Element.asHtmlElement->TestHelpers.unsafelyUnwrapOption
let event: Event.t = document->Document.createEvent("my-event")
let pointerEvent: PointerEvent.t = PointerEvent.make("my-event")

let accessKey: string = el->accessKey
let setAccessKey: unit = el->setAccessKey("")
let accessKeyLabel: string = el->accessKeyLabel
let contentEditable: contentEditable = el->contentEditable
let setContentEditable: unit = el->setContentEditable(Inherit)
let isContentEditable: bool = el->isContentEditable
let contextMenu: t = el->contextMenu
let setContextMenu: unit = el->setContextMenu(el2)
let dataset: Dom.domStringMap = el->dataset
let dir: dir = el->dir
let setDir: unit = el->setDir(Rtl)
let draggable: bool = el->draggable
let setDraggable: unit = el->setDraggable(true)
let dropzone: Dom.domSettableTokenList = el->dropzone
let hidden: bool = el->hidden
let setHidden: unit = el->setHidden(true)
let itemScope: bool = el->itemScope
let setItemScope: unit = el->setItemScope(true)
let itemType: Dom.domSettableTokenList = el->itemType
let itemId: string = el->itemId
let setItemId: unit = el->setItemId("my-id")
let itemRef: Dom.domSettableTokenList = el->itemRef
let itemProp: Dom.domSettableTokenList = el->itemProp
let itemValue: {..} = el->itemValue
let setItemValue: unit = el->setItemValue(%raw("{}"))
let lang: string = el->lang
let setLang: unit = el->setLang("en")
let offsetHeight: int = el->offsetHeight
let offsetLeft: int = el->offsetLeft
let offsetParent: option<Dom.element> = el->offsetParent
let offsetTop: int = el->offsetTop
let offsetWidth: int = el->offsetWidth
let spellcheck: bool = el->spellcheck
let setSpellcheck: unit = el->setSpellcheck(true)
let style: Dom.cssStyleDeclaration = el->style
let setStyle: unit = el->setStyle(style);
let tabIndex: int = el->tabIndex
let setTabIndex: unit = el->setTabIndex(42)
let title: string = el->title
let setTitle: unit = el->setTitle("hovertext!")
let translate: bool = el->translate
let setTranslate: unit = el->setTranslate(true)

el->blur
el->click
el->focus
el->forceSpellCheck


let assignedSlot: option<Dom.htmlSlotElement> = el->assignedSlot
let attributes: Dom.namedNodeMap = el->attributes
let classList: Dom.domTokenList = el->classList
let className: string = el->className
let setClassName: unit = el->setClassName("my-class-name")
let clientHeight: int = el->clientHeight
let clientLeft: int = el->clientLeft
let clientTop: int = el->clientTop
let clientWidth: int = el->clientWidth
let id: string = el->id
let setId: unit = el->setId("my-id")
let innerHTML: string = el->innerHTML
let setInnerHTML: unit = el->setInnerHTML("<strong>stuff</strong>")
let localName: string = el->localName
let namespaceURI: option<string> = el->namespaceURI
let nextElementSibling: option<Dom.element> = el->nextElementSibling
let outerHTML: string = el->outerHTML
let setOuterHTML: unit = el->setOuterHTML("<strong>stuff</strong>")
let prefix: option<string> = el->prefix
let previousElementSibling: option<Dom.element> = el->previousElementSibling
let scrollHeight: int = el->scrollHeight
let scrollLeft: float = el->scrollLeft
let setScrollLeft: unit = el->setScrollLeft(0.0)
let scrollTop: float = el->scrollTop
let setScrollTop: unit = el->setScrollTop(0.0)
let scrollWidth: int = el->scrollWidth
let shadowRoot: Dom.element = el->shadowRoot
let slot: string = el->slot
let setSlot: unit = el->setSlot("<strong>stuff</strong>")
let tagName: string = el->tagName

let attachShadow: Dom.shadowRoot = el->attachShadow({"mode": "open"})
let attachShadowOpen: Dom.shadowRoot = el->attachShadowOpen
let attachShadowClosed: Dom.shadowRoot = el->attachShadowClosed
let animate: Dom.animation = el->animate({"transform": "translateT(0px)"}, {"duration": 1000})
let closest: option<Dom.element> = el->closest("input")
let getAttribute: option<string> = el->getAttribute("href")
let getAttributeNS: option<string> = el->getAttributeNS("http://...", "foo")
let getBoundingClientRect: Dom.domRect = el->getBoundingClientRect
let clientRects: RectList.t = el->getClientRects
let getClientRectsItem: option<Dom.domRect> = el->getClientRects->RectList.item(0)
let getClientRectsArray: array<Dom.domRect> = el->getClientRects->RectList.toArray
let getElementsByClassName: Dom.htmlCollection = el->getElementsByClassName("some-class-name")
let getElementsByTagName: Dom.htmlCollection = el->getElementsByTagName("pre")
let getElementsByTagNameNS: Dom.htmlCollection = el->getElementsByTagNameNS("http://...", "td")
let hasAttribute: bool = el->hasAttribute("data-my-value")
let hasAttributeNS: bool = el->hasAttributeNS("http://...", "foo")
let hasAttributes: bool = el->hasAttributes
let insertAdjacentElement: unit = el->insertAdjacentElement(BeforeBegin, el2)
let insertAdjacentHTML: unit = el->insertAdjacentHTML(AfterBegin, "<strong>text</strong>")
let insertAdjacentText: unit = el->insertAdjacentText(AfterEnd, "text")
let matches: bool = el->matches("input")
let querySelector: option<Dom.element> = el->querySelector("input")
let querySelectorAll: Dom.nodeList = el->querySelectorAll("input")
let releasePointerCapture: unit = el->releasePointerCapture(PointerEvent.pointerId(pointerEvent))
let remove: unit = el->remove
let removeAttribute: unit = el->removeAttribute("href")
let removeAttributeNS: unit = el->removeAttributeNS("http://...", "foo")
let requestFullscreen: unit = el->requestFullscreen
let requestPointerLock: unit = el->requestPointerLock
let scrollIntoView: unit = el->scrollIntoView
let scrollIntoViewNoAlignToTop: unit = el->scrollIntoViewNoAlignToTop
let scrollIntoViewWithOptions: unit = el->scrollIntoViewWithOptions({"block": "end", "behavior": "smooth"})
let setAttribute: unit = el->setAttribute("href", "http://...")
let setAttributeNS: unit = el->setAttributeNS("http://...", "foo", "bar")
let setPointerCapture: unit = el->setPointerCapture(PointerEvent.pointerId(pointerEvent))

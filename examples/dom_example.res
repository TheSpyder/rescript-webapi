open Webapi.Dom
open Belt.Option

/* Adapted from https://developer.mozilla.org/en-US/docs/Web/API/Document_Object_Model/Examples#Example_7:_Displaying_Event_Object_Properties */

let unwrapUnsafely = x =>
  switch x {
  | Some(v) => v
  | None => raise(Invalid_argument("Passed `None` to unwrapUnsafely"))
  }

/*
 * These SHOULD type check
 */
let _ = document->Document.createElement("div")->Element.className

let _ =
  document
  ->Document.createElement("div")
  ->Element.nextElementSibling
  ->map(Element.innerText) /* innerText is a function that accepts a Node */

/* Before subtyping:
   document->Document.createElement("div")
           ->Element.asNode
           ->Node.parentElement /* inherited from Node, returns DomRe.element */
           ->map(Element.innerText); /* inherited from Node */
 */

/* After subtyping: */
let _ =
  document
  ->Document.createElement("div")
  ->Element.parentElement /* inherited from Node, returns DomRe.element */
  ->map(Element.innerText) /* inherited from Node */

let el = document->Document.createElement("div")->Element.asHtmlElement->unwrapUnsafely

/*
 document->Document.asHtmlDocument
         ->flatMap(HtmlDocument.body)
         ->map(Element.appendChild(el));
 */

/* Before subtyping:
   document->Document.asHtmlDocument
           ->flatMap(HtmlDocument.body)
           ->map(Element.appendChild (el->HtmlElement.asNode));
 */

/* After subtyping: */
let _ =
  document
  ->Document.asHtmlDocument
  ->flatMap(HtmlDocument.body)
  ->map(body => body->Element.appendChild(el))

/*
 /*
 * These MAY fail type check
 */
 document->Document.createElement("div")
         ->Element.nextElementSibling
         ->map(Node.innerText);

 /*
 * These SHOULD NOT type check
 */
 document->Document.createElement("div")
         ->Element.asNode
         ->Element.parentElement; /* inherited from Node, returns DomRe.element */
 */

/*
 /* ideal, but requires piped setters */
 switch (document->body) {
 | Some body =>
   document->createElement("div")
           ->setInnerText("</>")
           ->setClassName("reason_tools_button")
           ->setOnClick(swap)
           ->(body->appendChild);
 | None =>
   ...
 }
 */

/* non-standard event-specific listener API - log screen coordinates of mouse cursor when moved */
document
->Document.createElement("div")
->Element.addMouseMoveEventListener(e => (MouseEvent.screenX(e), MouseEvent.screenY(e))->Js.log)

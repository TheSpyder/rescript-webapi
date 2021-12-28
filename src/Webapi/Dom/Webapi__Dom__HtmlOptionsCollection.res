/**
 * Spec: https://html.spec.whatwg.org/multipage/common-dom-interfaces.html#htmloptionscollection
 * Extends HTMLCollection
 */
type t = Dom.htmlOptionsCollection

@val @scope(("Array", "prototype", "slice"))
external toArray: t => array<Dom.htmlOptionElement> = "call"

@send @return(nullable) external item: (t, int) => option<Dom.htmlOptionElement> = "item"
@send @return(nullable)
external namedItem: (t, string) => option<Dom.htmlOptionElement> = "namedItem"

@get external length: t => int = "length"
@set external setLength: (t, int) => unit = "length"

@set_index external setItem: (t, int, Dom.htmlOptionElement) => unit = ""
@set_index external clearItem: (t, int, @as(json`null`) _) => unit = ""

@get external selectedIndex: t => int = "selectedIndex"
@set external setSelectedIndex: (t, int) => unit = "selectedIndex"

@set external clearSelectedIndex: (t, @as(json`-1`) _) => unit = "selectedIndex"

/**
 * This method will throw a "HierarchyRequestError" DOMException if element is an ancestor of the element into which it is to be inserted.
 */
@send
external add: (
  t,
  ~option: @unwrap [#Option(Dom.htmlOptionElement) | #OptGroup(Dom.htmlOptGroupElement)],
  ~before: @unwrap [#Index(int) | #Element(Dom.htmlElement)]=?,
) => unit = "add"
@send external remove: (t, int) => unit = "remove"

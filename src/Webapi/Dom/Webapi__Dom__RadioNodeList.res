/**
 * Spec: https://html.spec.whatwg.org/#radionodelist
 * Extends: NodeList
 */

type t = Dom.radioNodeList

@val external toArray: t => array<Dom.node> = "Array.prototype.slice.call"

@send external forEach: (t, (Dom.node, int) => unit) => unit = "forEach"

@get external length: t => int = "length"

@send @return(nullable) external item: (t, int) => option<Dom.node> = "item"

@get external value: t => string = "value"

external unsafeAsRadioNodeList: 'a => t = "%identity"

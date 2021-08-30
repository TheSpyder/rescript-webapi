open Webapi.Dom
open History

let _ = history->length
let _ = history->scrollRestoration
let _ = history->setScrollRestoration(true)
let _ = history->state

history->back
history->forward
history->go(-2)
history->pushState(history->state, "My title", "http://...")
history->replaceState(history->state, "My title", "http://...")

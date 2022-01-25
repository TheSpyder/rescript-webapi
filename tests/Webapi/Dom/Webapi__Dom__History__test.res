open Webapi.Dom
open History

let _ = history->length
let _ = history->scrollRestoration
let _ = history->setScrollRestoration(#auto)
let _ = history->setScrollRestoration(#manual)
let _ = history->state

switch (history->scrollRestoration) {
  | #auto => Js.log("auto scroll")
  | #manual => Js.log("manual scroll")
}

history->back
history->forward
history->go(-2)
history->pushState(history->state, "My title", "http://...")
history->replaceState(history->state, "My title", "http://...")

open Webapi.Dom
open History

let length: int = history->length
let scrollRestorationTest: [#auto | #manual] = history->scrollRestoration
history->setScrollRestoration(#auto)
history->setScrollRestoration(#manual)
let stateTest: state = history->state

switch (history->scrollRestoration) {
  | #auto => Js.log("auto scroll")
  | #manual => Js.log("manual scroll")
}

history->back
history->forward
history->go(-2)
history->pushState(history->state, "My title", "http://...")
history->replaceState(history->state, "My title", "http://...")

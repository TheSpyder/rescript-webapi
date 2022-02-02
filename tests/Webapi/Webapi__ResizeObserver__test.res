let el: Dom.element = Webapi.Dom.document->Webapi.Dom.Document.createElement("strong")

let handler = entries => {
  let entry = entries[0]
  let cr: Dom.domRect = entry->Webapi.ResizeObserver.ResizeObserverEntry.contentRect
  let t: Dom.element = entry->Webapi.ResizeObserver.ResizeObserverEntry.target
  Js.log2(cr, t)
}

let observer = Webapi.ResizeObserver.make(handler)

observer->Webapi.ResizeObserver.observe(el)
observer->Webapi.ResizeObserver.unobserve(el)
observer->Webapi.ResizeObserver.disconnect

let el = Webapi.Dom.document->Webapi.Dom.Document.createElement("strong");

let handler = entries => {
  let entry = entries[0];
  let _: Dom.domRect = entry->Webapi.ResizeObserver.ResizeObserverEntry.contentRect;
  let _: Dom.element = entry->Webapi.ResizeObserver.ResizeObserverEntry.target;
  ();
};

let observer = Webapi.ResizeObserver.make(handler);

observer->Webapi.ResizeObserver.observe(el);
observer->Webapi.ResizeObserver.unobserve(el);
observer->Webapi.ResizeObserver.disconnect;

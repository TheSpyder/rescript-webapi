let el = Dom2.document->Dom2.Document.createElement("strong");

let handler = entries => {
  let entry = entries[0];
  let _: Dom.domRect = entry->ResizeObserver.ResizeObserverEntry.contentRect;
  let _: Dom.element = entry->ResizeObserver.ResizeObserverEntry.target;
  ();
};

let observer = ResizeObserver.make(handler);

observer->ResizeObserver.observe(el);
observer->ResizeObserver.unobserve(el);
observer->ResizeObserver.disconnect;

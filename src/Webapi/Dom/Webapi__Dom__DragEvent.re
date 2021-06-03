type t = Dom.dragEvent;

include Webapi__Dom__Event.Impl({
  type nonrec t = t;
});
include Webapi__Dom__UiEvent.Impl({
  type nonrec t = t;
});
include Webapi__Dom__MouseEvent.Impl({
  type nonrec t = t;
});

[@new] external make: string => t = "DragEvent";
[@new] external makeWithOptions: (string, Js.t({..})) => t = "DragEvent";

[@get] external dataTransfer: t => Dom.dataTransfer;

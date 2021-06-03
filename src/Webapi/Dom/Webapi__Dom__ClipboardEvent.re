type t = Dom.clipboardEvent;

include Webapi__Dom__Event.Impl({
  type nonrec t = t;
});

[@new] external make: string => t = "ClipboardEvent";
[@new] external makeWithOptions: (string, Js.t({..})) => t = "ClipboardEvent";

[@get] external clipboardData: t => Dom.dataTransfer;

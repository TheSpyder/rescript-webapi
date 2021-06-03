type t = Dom.inputEvent;

include Webapi__Dom__Event.Impl({
  type nonrec t = t;
});
include Webapi__Dom__UiEvent.Impl({
  type nonrec t = t;
});

[@new] external make: string => t = "InputEvent";
[@new] external makeWithOptions: (string, Js.t({..})) => t = "InputEvent";

[@get] external data: t => string;
[@get] external isComposing: t => bool;

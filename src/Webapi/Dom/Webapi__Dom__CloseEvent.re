type t = Dom.closeEvent;

include Webapi__Dom__Event.Impl({
  type nonrec t = t;
});

[@new] external make: string => t = "CloseEvent";
[@new] external makeWithOptions: (string, Js.t({..})) => t = "CloseEvent";

[@get] external wasClean: t => bool;
[@get] external code: t => int;
[@get] external reason: t => string;

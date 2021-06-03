type t = Dom.popStateEvent;

include Webapi__Dom__Event.Impl({
  type nonrec t = t;
});

[@new] external make: string => t = "PopStateEvent";
[@new] external makeWithOptions: (string, Js.t({..})) => t = "PopStateEvent";

[@get] external state: t => Js.t({..});

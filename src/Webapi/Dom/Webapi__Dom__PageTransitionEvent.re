type t = Dom.pageTransitionEvent;

include Webapi__Dom__Event.Impl({
  type nonrec t = t;
});

[@new] external make: string => t = "PageTransitionEvent";
[@new] external makeWithOptions: (string, Js.t({..})) => t = "PageTransitionEvent";

[@get] external persisted: t => bool;

type t = Dom.beforeUnloadEvent;

include Webapi__Dom__Event.Impl({
  type nonrec t = t;
});

[@new] external make: string => t = "BeforeUnloadEvent";
[@new] external makeWithOptions: (string, Js.t({..})) => t = "BeforeUnloadEvent";

[@get] external returnValue: t => string;

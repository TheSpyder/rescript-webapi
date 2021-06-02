type t = Dom.timeEvent;

include Webapi__Dom__Event.Impl({
  type nonrec t = t;
});

[@new] external make: string => t = "TimeEvent";
[@new] external makeWithOptions: (string, Js.t({..})) => t = "TimeEvent";

[@get] external detail: t => int;
[@get] external view: t => Dom.window; /* technically returns a `WindowProxy` */

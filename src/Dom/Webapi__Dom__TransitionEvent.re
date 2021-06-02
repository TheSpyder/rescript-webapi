type t = Dom.transitionEvent;

include Webapi__Dom__Event.Impl({
  type nonrec t = t;
});

[@new] external make: string => t = "TransitionEvent";
[@new] external makeWithOptions: (string, Js.t({..})) => t = "TransitionEvent";

[@get] external propertyName: t => string;
[@get] external elapsedTime: t => float;
[@get] external pseudoElement: t => string /* enum-ish */;
